# Data Processing

Datasets should be preprocessed to proceed. scGNN accepts scRNA-seq data format: CSV and 10X

### Preprocess input files for scGNN

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
