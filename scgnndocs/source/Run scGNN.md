# Run scGNN

Program ***PreprocessingscGNN.py*** is the main entrance of scGNN to impute and clustering. There are quite a few parameters to define to meet users' requirements.

#### Required

- **datasetName** defines the folder of scRNA-Seq
- **LTMGDir** defines folder of the preprocessed LTMG output
- **outputDir** Output folder of the results

#### Clustering related

- **clustering-method** Clustering method on identifying celltypes from the embedding. Default is LouvainK: use Louvain to determine the number of the clusters and then use K-means. Supporting clustering type: 
Louvain/KMeans/SpectralClustering/AffinityPropagation/AgglomerativeClustering/AgglomerativeClusteringK/Birch/BirchN/MeanShift/OPTICS/LouvainK/LouvainB
- **n-clusters** predefines the number of clusters, it only used for clustering methods need a number of clusters input as KNN
- **maxClusterNumber** defines the maximum number of cluster allowed, default is 30. This parameter prevents extreme cases that too many clusters identified by Louvian clustering
- **minMemberinCluster** defines the minimum number of cells in a cluster, default is 5. This parameter prevents extreme cases that too many clusters identified by Louvain clustering.
- **resolution** controls the number of clusters identified by Louvain clustering. This parameter can be set between 0.4 and 1.2 in most cases. According to results on benchmarks, we set default 'auto'.

#### Optional: Hyperparameters

- **EM-iteration** defines the number of iteration, default is 10 
- **Regu-epochs** defines epochs in feature autoencoder, default is 500
- **EM-epochs** defines epochs in feature autoencoder in the iteration, default is 200
- **cluster-epochs** defines epochs in the cluster autoencoder, default is 200
- **k** is k of the K-Nearest-Neighour Graph
- **knn-distance** distance type of building K-Nearest-Neighour Graph, supported type: euclidean/cosine/correlation (default: euclidean)
- **GAEepochs** Number of epochs to train in Graph Autoencoder

#### Optional: Performance

- **quickmode** whether or not to bypass the cluster autoencoder.
- **useGAEembedding** whether use Graph Autoencoder
- **regulized-type** is the regularized type: noregu/LTMG, default is to use LTMG
- **alphaRegularizePara** alpha in the manuscript, the intensity of the regularizer
- **EMregulized-type** defines the imputation regularizer type:noregu/Graph/Celltype, default: Celltype
- **gammaImputePara** defines the intensity of LTMG regularizer in Imputation
- **graphImputePara** defines the intensity of graph regularizer in Imputation
- **celltypeImputePara** defines the intensity of celltype regularizer in Imputation
- **L1Para** defines the intensity of L1 regularizer, default: 1.0 
- **L2Para** defines the intensity of L2 regularizer, defualt: 0.0
- **saveinternal** whether output internal results for debug usage

#### Optional: Speed

- **coresUsage** defines how many cores can be used. default: 1.

#### Example: 

##### CSV format

For CSV format, we need add **--nonsparseMode**

```bash
python -W ignore scGNN.py --datasetName GSE138852 --datasetDir YOUR_FOLDER --LTMGDir ./ --outputDir outputdir/ --EM-iteration 2 --Regu-epochs 50 --EM-epochs 20 --quickmode --nonsparseMode
```

##### 10X format

```bash
python -W ignore scGNN.py --datasetName 481193cb-c021-4e04-b477-0b7cfef4614b.mtx --LTMGDir liver/ --datasetDir YOUR_FOLDER --outputDir outputdir/ --EM-iteration 2 --Regu-epochs 50 --EM-epochs 20 --quickmode
```

On these demo dataset using single cpu, the running time of demo codes is ~33min/26min. User should get exact same results as paper shown with full running time on single cpu for ~6 hours. If user wants to use multiple CPUs, parameter **--coresUsage** can be set as **all** or any number of cores the machine has.

For a complete list of options provided by scGNN:

```bash
python scGNN.py --help
```