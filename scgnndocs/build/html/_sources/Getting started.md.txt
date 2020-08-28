# Getting started

## Preprocess

Datasets should be preprocessed to proceed. scGNN accepts scRNA-seq data format: CSV and 10X

### 1. Prepare datasets

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

### 2. Preprocess input files for scGNN

Program ***PreprocessingscGNN.py*** is used to generate input files for scGNN. This step generates Use_expression.csv (preprocessed file) and gets discretized regulatory signals as ltmg.csv from Left-Trunctruncated-Mixed-Gaussian(LTMG) model (Optional but recommended).

In ***PreprocessingscGNN.py***, usually these parameters are used:

#### Required

- **datasetName** defines the raw file name of scRNA-Seq
- **datasetDir** folder of the raw file
- **LTMGDir** Ouput folder of the LTMG output
- **filetype** defines file type (CSV or 10X(default))

#### Optional

- **transform** defines the type of transformation, default is logarithm transformation. In the implementation, we use log(x+1), x is the original expression level.
- **cellRatio** defines the maximum ratio of zeros in cells. Default is 0.99. This parameter filters out cells with more than 99% genes that are zeros.
- **geneRatio** defines the maximum ratio of zeros in genes. Default is 0.99. This parameter filters out genes with more than 99% genes that are zeros.
- **geneCriteria** defines which criteria to select most variant genes, default is variance.
- **geneSelectnum** selects a number of most variant genes. The default gene number is 2000.

The running time of ***PreprocessingscGNN.py*** is dependent on the cell number and gene numbers selected. It takes ~20 minutes (GSE138852) and ~28 minutes (liver) to generate the files needed.

#### Example:

##### CSV format

```shell
python -W ignore PreprocessingscGNN.py --datasetName GSE138852_counts.csv.gz --datasetDir GSE138852/ --LTMGDir GSE138852/ --filetype CSV --geneSelectnum 2000
```

##### 10X format

```shell
python -W ignore PreprocessingscGNN.py --datasetName 481193cb-c021-4e04-b477-0b7cfef4614b.mtx --datasetDir liver/ --LTMGDir liver/ --geneSelectnum 2000
```


## Check Results

In outputdir now, we have four output files.

- ***_recon.csv**:        Imputed gene expression matrix. Row as gene, col as cell. First row as gene name, First col as the cell name. 

- ***_embedding.csv**:    Learned embedding (features) for clustering. Row as cell, col as embeddings. First row as the embedding names (no means). First col as the cell name.

- ***_graph.csv**:        Learned graph edges of the cell graph in tuples: nodeA,nodeB,weights. First row as the name.

- ***_results.txt**:      Identified cell types. First row as the name. 

For a complete list of options provided by scGNN:

```bash
python scGNN.py --help
```
