library(scMAGeCK)
library(Seurat)
# set the BARCODE and RDS file path 
BARCODE = "barcode_rec.txt"
bc_frame=read.table(BARCODE,header = T,as.is = T)

# needs clean later, but cell identity will need to be fixed
bc_frame$cell=sub('-1','',bc_frame$cell)


## RDS can be a Seurat object or local RDS file path that contains the scRNA-seq dataset
RDS = "singles_dox_mki67_v3.RDS"
rds_object=readRDS(RDS)

# Run scmageck_eff_estimate function
# By default, the result will be saved to the current working directory. 
rds_object<-assign_cell_identity(bc_frame,rds_object)

eff_object <- scmageck_eff_estimate(rds_object, bc_frame, perturb_gene='TP53', 
                                    non_target_ctrl = 'NonTargetingControlGuideForHuman')

# or run all the genes; 
# note that in order to run it, this mini rds file is not enough. 
# will need an rds object that contains the expressions of all genes

#eff_object <- scmageck_eff_estimate(rds_object, bc_frame, 
#                                    perturb_gene=grep('NonTargetingControlGuideForHuman',unique(rds_object$gene),value = T, invert = T), 
#                                    non_target_ctrl = 'NonTargetingControlGuideForHuman',assay_for_cor='RNA')


eff_estimat=eff_object$eff_matrix
rds_subset=eff_object$rds

# TP53 scores clearly show the pattern of clustering
FeaturePlot(rds_subset,features='TP53_eff',reduction = 'tsne')

# whereas TP53 gene expression did not have this pattern
FeaturePlot(rds_subset,features='TP53',reduction = 'tsne')

#head(lr_score)
