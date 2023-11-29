# PS
Perturbation-response Score (PS) analysis is a method to quantify diverse perturbation responses and discover novel biological insights in single-cell perturbation datasets.

## Contents
* Installation
* Demo
* Documentation
* References

## Installation

PS has been implemented in R as part of our [scMAGeCK](https://bitbucket.org/weililab/scmageck/src/master/) package. To use, simply install scMAGeCK in one of the following ways.

## Dependencies 

scMAGeCK depends on the following softwares or packages.

* pysam
* R 
* [Seurat](https://satijalab.org/seurat/)

Follow the instructions of [Seurat installation](https://satijalab.org/seurat/install.html).


## Method 1: Install via our GitHub repository (recommended)

Our [Github](https://github.com/weililab/scMAGeCK) repo is created specifically for an easy installation of scMAGeCK R package. Use the following command in R to install:

    library(devtools)
    install_github('weililab/scMAGeCK')
    
## Method 2: download and install directly from github

First, download scMAGeCK R source code from github [scmageck](https://github.com/weililab/scMAGeCK) repository.

Second, in the command line (if you are using RStudio, open your RStudio and click on the "Terminal" tab which is next to the Console tab), type the following command:

    cd scMAGeCK_package_folder
    
    R CMD INSTALL scMAGeCK_0.99.15.tar.gz

Note: "R CMD install" may not work; use "R CMD INSTALL".


# Demos

## Demo 1: run a simple demo

This demo provides a mini example to run both modules of scMAGeCK: RRA and LR. 

In RStudio, open the file *scmageck_rra_demo.R* or *scmageck_lr_demo.R*. Then press *Ctrl + Enter* to run all lines of the script or click *Run* tab to run line by line.

In the terminal, type

    Rscript scmageck_rra_demo.R  

or

    Rscript scmageck_lr_demo.R

to run both demos.

The explanations of each input/outp files can be found in the Output files section below.

## Demo 2

