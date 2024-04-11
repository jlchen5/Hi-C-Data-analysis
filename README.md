# Hi-C-analysis

- This repository is for analyzing the Hi-C data.

- Use this script [pre_environment.sh](https://github.com/jlchen5/Hi-C-Data-analysis/blob/main/pre_environment.sh) to prepare the analysis environment.



## Hi-C data compare tools

### ➡️ [diffHic](https://bioconductor.org/packages/release/bioc/html/diffHic.html)
- Detects differential interactions across biological conditions in a Hi-C experiment. Methods are provided for read alignment and data pre-processing into interaction counts. Statistical analysis is based on edgeR and supports normalization and filtering. Several visualization options are also available.
- Citation (from within R, enter citation("diffHic")):
~~~
Lun ATL, Smyth GK (2015). “diffHic: a Bioconductor package to detect differential genomic interactions in Hi-C data.” BMC Bioinformatics, 16, 258.
~~~

- Installation
To install this package, start R (version "4.3") and enter:
~~~
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("diffHic")
~~~

### ➡️ [multiHiCcompare](https://bioconductor.org/packages/release/bioc/html/multiHiCcompare.html)

- [Github](https://github.com/dozmorovlab/multiHiCcompare)
- [Tutorial](https://dozmorovlab.github.io/multiHiCcompare/)
- [HiCcompareWorkshop](https://mdozmorov.github.io/HiCcompareWorkshop/articles/hic_tutorial.html)

- Citation (from within R, enter citation("multiHiCcompare")):
~~~
Stansfield JC, Cresswell KG, Dozmorov MG (2019). “multiHiCcompare: joint normalization and comparative analysis of complex Hi-C experiments.” Bioinformatics, 35(17). doi:10.1093/bioinformatics/btz048, https://github.com/dozmorovlab/multiHiCcompare.
~~~

- Installation
To install this package, start R (version "4.3") and enter:
~~~
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("multiHiCcompare")
~~~

