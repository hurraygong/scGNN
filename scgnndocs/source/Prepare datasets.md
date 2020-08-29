# Prepare datasets

Datasets should be preprocessed to proceed. scGNN accepts scRNA-seq data format: CSV and 10X

###  Dowmload datasets

CSV format explicitly shows data in plain text. We take an example of Alzheimer’s disease datasets ([GSE138852](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE138852)) analyzed in the manuscript.

10X format stores scRNA-seq expression sparsely, so is commonly used for huge datasets. Take an example of [liver cellular landscape study](https://data.humancellatlas.org/explore/projects/4d6f6c96-2a83-43d8-8fe1-0f53bffd4674) from human cell atlas(<https://data.humancellatlas.org/>)

#### Example:

##### CSV format

```shell
mkdir GSE138852
wget -P GSE138852/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE138nnn/GSE138852/suppl/GSE138852_counts.csv.gz
```

##### 10X format

```shell
mkdir liver
wget -P liver https://data.humancellatlas.org/project-assets/project-matrices/4d6f6c96-2a83-43d8-8fe1-0f53bffd4674.homo_sapiens.mtx.zip
cd liver
unzip 4d6f6c96-2a83-43d8-8fe1-0f53bffd4674.homo_sapiens.mtx.zip
cd ..
```