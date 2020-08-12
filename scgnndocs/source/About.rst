About scGNN
------------

scGNN (single cell graph neural networks) provides a hypothesis-free deep learning framework for scRNA-Seq analyses. This framework formulates and aggregates cell-cell relationships with graph neural networks and models heterogeneous gene expression patterns using a left-truncated mixture Gaussian model. scGNN integrates three iterative multi-modal autoencoders and outperforms existing tools for gene imputation and cell clustering on four benchmark scRNA-Seq datasets.

This repository contains the source code for the paper scGNN: a novel graph neural network framework for single-cell RNA-Seq analyses preprint available at bioRxiv; doi: https://doi.org/10.1101/2020.08.02.233569

scGNN model
^^^^^^^^^^^^

The architecture of scGNN is comprised of stacked autoencoders.

It has three comprehensive computational components in an iteration process, including gene regulation integration in a feature autoencoder, cell graph representation in a graph autoencoder, gene expression updating in a set of parallel cell-type105 specific cluster autoencoders, as well as the final gene expression recovery in an imputation
autoencoder.

![image](https://github.com/hurraygong/scGNN/blob/master/pictures/overview.jpg)

This is the architecture of scGNN. It takes the gene expression matrix generated from scRNA-Seq as the input. LTMG can translate the input gene expression data into a discretized regulatory signal as the regularizer for the feature autoencoder. The feature autoencoder learns a dimensional representation of the input as embedding, upon which a cell graph is constructed and pruned. The graph autoencoder learns a topological graph embedding of the cell graph, which is used for cell type clustering. The cells in each cell type have an individual cluster autoencoder to reconstruct gene expression values. The framework treats the reconstructed expression as a new input iteratively until converging. Finally, the imputed gene expression values are obtained by the feature autoencoder regularized by the cell-cell relationships in the learned cell graph on the original preprocessed raw expression matrix through the imputation autoencoder

