# DataProcessing

Preprocessing dataset for scGNN supports that for the following two generic file formats `10X` or `CSV`.  We can use command to process data, such as <font color=red size=3>`python3 -W ignore PreprocessingscGNN.py --parameters`</font>.
We take two steps to generate scGNN model input data in the module `PreprocessingscGNN.py`.

- Step1: Start filter and generating CSV
- Step2: Start infer LTMG from CSV

The parameter *nonfilterCSVTag* and *noninferLTMGTag* is inputted by manual. All default are `False`.
*args.filterCSVTag* and *args.inferLTMGTag* values are as follows.

``` python
args.filterCSVTag = not args.nonfilterCSVTag
args.inferLTMGTag = not args.noninferLTMGTag
```

***Step1: Start filter and generating CSV***

``` python
if args.filterCSVTag:
    if args.filetype == '10X':
        expressionFilename = args.LTMGDir+args.datasetName+'/'+args.expressionFile
        preprocessing10X(args.datasetDir, args.datasetName, expressionFilename, args.transform, args.cellRatio, args.geneRatio, args.geneCriteria, args.geneSelectnum, args.sparseOutTag)
    elif args.filetype == 'CSV':
        expressionFilename = args.LTMGDir+args.expressionFile
        preprocessingCSV(args.datasetDir, args.datasetName, expressionFilename, args.delim, args.transform, args.cellRatio, args.geneRatio, args.geneCriteria, args.geneSelectnum, args.transpose, args.tabuCol)
 ```

For the step1, if the file format is `10X`, the data will be processed though the function <font color=blue>`preprocessing10X`</font>. The necessary parameters are as follows.
<font size= 2>
+ *args.datasetDir:* str. The Dataset path,
+ *args.datasetName:*   str. The DatasetName, also a folder name which the files for proce are in.
+ *expressionFilename:*  str. Row is genes, column is cell.
+ *args.transform:* whether to transform the gene expression value `x`. default `log`, *log(x+1)*
+ *args.cellRatio :*  ##Include features detected in at least this many cells. Will subset the counts matrix as well. To reintroduce excluded features, create a new object with a lower cutoff.
+ *args.geneRatio :*  ##Include cells where at least this many features are detected
+ *args.geneCriteria :*  How to choose top variable features;
+ *args.geneSelectnum :*  Number of features to select as top variable features;
+ *args.sparseOutTag:* whether to use sparse coding or not. The input parameter is `--nonsparseOutTag`,default `False`. `args.sparseOutTag = not nonsparseOutTag`

</font>

    preprocessingCSV(args.datasetDir, args.datasetName, expressionFilename, args.delim, args.transform, args.cellRatio, args.geneRatio, args.geneCriteria, args.geneSelectnum, args.transpose, args.tabuCol)

+ *args.delim:*  File delim type, comma or space: default(comma)
+ *args.transpose:* whether transpose gene expression or not
+ *args.tabuCol:*  Not use some columns and setting their names split by ,default `''`


***Step2: Start infer LTMG from CSV***

``` python
if args.inferLTMGTag:
    print('Step2: Start infer LTMG from CSV')
    if args.filetype == '10X':
        ltmgdir = args.LTMGDir+args.datasetName+'/'
    elif args.filetype == 'CSV':
        ltmgdir = args.LTMGDir
    runLTMG(ltmgdir+args.expressionFile, ltmgdir)
 ```

Left-Trunctruncated-Mixed-Gaussian(LTMG) model is a novel statistical modeling of transcriptional expression states in single-cell RNA-Seq data. LTMG is build on `R`. This is the example used by `python`.

``` python
import rpy2.robjects as robjects
from rpy2.robjects.packages import importr
importr('scGNNLTMG')

def runLTMG(expressionFile,ltmgFolder):

    robjects.globalenv['expressionFile'] = expressionFile
    robjects.globalenv['ltmgFolder'] = ltmgFolder

    robjects.r('''
        x <- read.csv(expressionFile,header = T,row.names = 1,check.names = F)
        object <- CreateLTMGObject(x)
        object <-RunLTMG(object,Gene_use = 'all')
        WriteSparse(object,path=ltmgFolder,gene.name=FALSE, cell.name=FALSE)
    ''')

 ```