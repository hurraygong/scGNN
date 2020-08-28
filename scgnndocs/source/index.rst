scGNN - single cell graph neural networks
============================================================

.. image:: https://raw.githubusercontent.com/hurraygong/scGNN/master/pictures/F1.large.jpg
   :width: 400px
   :align: left


**scGNN** (single cell graph neural networks) provides a hypothesis-free deep learning framework for scRNA-Seq analyses. This framework formulates and aggregates cell-cell relationships with graph neural networks and models heterogeneous gene expression patterns using a left-truncated mixture Gaussian model. scGNN integrates three iterative multi-modal autoencoders and outperforms existing tools for gene imputation and cell clustering on four benchmark scRNA-Seq datasets.

This repository contains the source code for the paper scGNN: a novel graph neural network framework for single-cell RNA-Seq analyses preprint available at bioRxiv; doi: https://doi.org/10.1101/2020.08.02.233569

scGNN's applications
^^^^^^^^^^^^^^^^^^^^^^^^^
- Imputed gene expression matrix. to Models heterogeneous gene expression patterns using a left-truncated mixture Gaussian model.
- Learned embedding (features) for clustering.
- Learned graph edges of the cell graph in tuples: nodeA,nodeB,weights.
- Identified cell types. Formulates and agregates cell-cell relationships with graph neural networks

Reference
^^^^^^^^^
Juexin Wang, Anjun Ma, Yuzhou Chang, Jianting Gong, Yuexu Jiang, Hongjun Fu, Cankun Wang, Ren Qi, Qin Ma, Dong Xu, scGNN: a novel graph neural network framework for single-cell RNA-Seq analyses, bioRxiv, https://doi.org/10.1101/2020.08.02.233569
The codes are available at https://github.com/juexinwang/scGNN

ACKNOWLEDGEMENTS
^^^^^^^^^^^^^^^^
This work was supported by the National Institutes of Health’s National Institute of General Medical Sciences (awards R35-GM126985 and R01-GM131399).

Support
^^^^^^^
Feel free to submit an `issue <https://github.com/juexinwang/scGNN/issues/new/choose>`_
or send us an `email <wangjue@missouri.edu>`_.
Your help to improve scGNN is highly appreciated.

.. note::

   Dear scGNN users


.. toctree::
   :caption: Main
   :maxdepth: 1
   :hidden:

   About
   Installation
   Quickstart
   Release
   References
   Contact

.. toctree::
   :caption: Tutorials
   :maxdepth: 1
   :hidden:

   Getting started
   Data Processing
   Downstream Analysis

.. toctree::
   :caption: Example Datasets
   :maxdepth: 1
   :hidden:

   Benchmark data
   Casestudy

