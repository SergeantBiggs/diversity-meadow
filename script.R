#!/usr/bin/Rscript

library(vegan)

species_number_tree <- read.csv("species_number_tree.csv", header=T)
species_number_field <- read.csv("species_number_field.csv", header=T)

cat("-------------------------------------\n")
cat("Diversity tree\n")
cat("Total:", diversity(species_number_tree$total), "\n")
cat("SW:", diversity(species_number_tree$SW), "\n")
cat("SE:", diversity(species_number_tree$SE), "\n")
cat("NE:", diversity(species_number_tree$NE), "\n")
cat("NW:", diversity(species_number_tree$NW), "\n")
cat("-------------------------------------\n")

cat("Diversity field\n")
cat("Total:", diversity(species_number_field$total), "\n")
cat("SW:", diversity(species_number_field$SW), "\n")
cat("SE:", diversity(species_number_field$SE), "\n")
cat("NE:", diversity(species_number_field$NE), "\n")
cat("NW:", diversity(species_number_field$NW), "\n")
cat("-------------------------------------\n")
cat("-------------------------------------\n")


cat("Richness tree\n")
cat("Total:", sum(species_number_tree$total), "\n")
cat("SW:", sum(species_number_tree$SW), "\n")
cat("SE:", sum(species_number_tree$SE), "\n")
cat("NE:", sum(species_number_tree$NE), "\n")
cat("NW:", sum(species_number_tree$NW), "\n")
cat("-------------------------------------\n")

cat("Richness field\n")
cat("Total:", sum(species_number_field$total), "\n")
cat("SW:", sum(species_number_field$SW), "\n")
cat("SE:", sum(species_number_field$SE), "\n")
cat("NE:", sum(species_number_field$NE), "\n")
cat("NW:", sum(species_number_field$NW), "\n")
cat("-------------------------------------")

comparison_total <- c(sum(species_number_tree$total), sum(species_number_field$total))

comparison_tree <- c(sum(species_number_tree$SW), sum(species_number_tree$SE), sum(species_number_tree$NE), sum(species_number_tree$NW))

comparison_field <- c(sum(species_number_field$SW), sum(species_number_field$SE), sum(species_number_field$NE), sum(species_number_field$NW))

dir.create("output")
setwd("output")

pdf()
barplot(comparison_total, main="Total richness", xlab="Location", ylab="Frequency", names.arg=c("tree", "field"), col="green",xlim=c(0,5), space=0.5, ylim=c(0,1000))

barplot(comparison_tree, main="Richness tree", xlab="Location", ylab="Frequency", names.arg=c("SW","SE","NE","NW"), col="green",xlim=c(0,5), space=0.25, ylim=c(0,300))

barplot(comparison_field, main="Richness field", xlab="Location", ylab="Frequency", names.arg=c("SW","SE","NE","NW"), col="green",xlim=c(0,5), space=0.25, ylim=c(0,300))
