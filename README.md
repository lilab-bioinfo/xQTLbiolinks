## xQTLbiolinks: a R package aims to query, download, visual and integrate integrative analysis of GTEx data

> By retrieving GTEx public-access data programmatically using the application programming interface (API) of GTEx and eQTL Catalogue, the functions provided in this package enable users to access molecular QTLs (eQTLs and sQTLs) and gene expressions data filtered by tissue, gene, variant or dataset. xQTLbiolinks consists of functions that can be grouped into three main levels: Query, Download, Analysis and Visualization.

### xQTLbiolinks assist in:

1.  fast querying variants’ effect on gene expression in the process of disease studies;
2.  to uncover tissue-specific expressed genes; and to detect disease associated genes by conduct colocalization analyses of GWAS and eQTL signals;
3.  to perform data visualization (e.g. correlation plots of expression, boxplots of eQTL expression; and locuszom plots).

### Installation from GitHub

``` r
if(!require("remotes")){install.packages("remote")}
install_git("https://gitee.com/stronghoney/GTExbiolinks.git")

remotes::install_github("dingruofan/xQTLbiolinks", 
                         auth_token="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")
```


