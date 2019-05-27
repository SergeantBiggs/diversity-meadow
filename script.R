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
