#. SPIAT is designed for spatial transcriptomics data
# There are different ways to label the proteins (fluorophores, ions, oligos, 
# metal isotopes)

#Note: no normalization or scaling available in the package

# Observations as columns and features as rows.

# cell data -> 36 proteins
# clinical data -> survival (metadata)


# READ AND FORMAT THE IMAGE
format_image_to_spe()
# you need to preformt the data and extract info like:
# intensities
# pheneotypes
# coordinates

# FOR DATA THAT DOESNT HAVE PHENOTYPE DATA, WE CAN PREDICT IT
predict_phenotypes()
# on baseline_markers = c("CD3", "CD4", "CD8", "CD20") you indicate what 
# markers you will use as phenotype for healthy cells
# on toumor_marker = "SOX10" # marker that you assume appears on majority od the cells
# This will define what markers each cell expresses

#DEFINE CELL TYPES
define_celltypes() #based on phynotypes

# BASIC ANALYSIS
#cell proportions, minimum distance and pair wse distance

#MIXING SCORE
#take one cell and calculate the distance within a defined radios (20um - 100um)
#depending on what you define as distance of interacting cells. Then you calculate
#the  distance ratio of a target cell over a reference cell.


#CORSS K FUNCTION
#it s similar to the previous but the radious is of increasing size
#in case you want to test if the a cell type is colocalised with another cell, 
# you can simulate randomly distributed data with the same abundance as your
# target cell, and compare them # simulations are with a poisson deistribution

#ENTHROPY AS A MEASURMENT OF COLOCALISATION
# If a system has high enthropy, there is high coloclization (more chaotic)
#You can plot a curve to see if the observed enthropy is more or less that that
#expected at random
#SPAstat is a package that does spatial simulation

# MIXING SCORE IS A MEASURE OF INTERACTION
# this is describied in the paper of the package

# Spatial heterogenity is measured as enthropy in a gid of the studied space

# TISSUE STRUCTURE 
# When defining tissue structure, there is a metric called alpha, which will
# will indicate how strict we are when defining tissue borders.

# NEIGHBOURHOOD ANALYSIS
#define k nearest cells according to where they are, and then calculate the 
# composition of the neighborhood.