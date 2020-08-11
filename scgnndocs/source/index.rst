|Docs|

scGNN - single cell graph neural networks
============================================================

.. image:: https://github.com/hurraygong/scGNN/blob/master/pictures/overview.jpg
   :width: 300px
   :align: left

**scGNN** (single cell graph neural networks) provides a hypothesis-free deep learning framework for scRNA-Seq analyses. This framework formulates and aggregates cell-cell relationships with graph neural networks and models heterogeneous gene expression patterns using a left-truncated mixture Gaussian model. scGNN integrates three iterative multi-modal autoencoders and outperforms existing tools for gene imputation and cell clustering on four benchmark scRNA-Seq datasets.

This repository contains the source code for the paper scGNN: a novel graph neural network framework for single-cell RNA-Seq analyses preprint available at bioRxiv; doi: https://doi.org/10.1101/2020.08.02.233569
|br|

scGNN's applications
^^^^^^^^^^^^^^^^^^^^^^^^^
- Formulates and ggregates cell-cell relationships with graph neural networks
- Models heterogeneous gene expression patterns using a left-truncated mixture Gaussian model

Reference
^^^^^^^^^
1. `VAE <https://github.com/pytorch/examples/tree/master/vae>`_
2. `GAE <https://github.com/tkipf/gae/tree/master/gae>`_
3. `scVI-reproducibility <https://github.com/romain-lopez/scVI-reproducibility>`_
4. `LTMG <https://academic.oup.com/nar/article/47/18/e111/5542876>`_

**BibTeX**
^^^^^^^^^
```latex
@article{Wang_2020_scGNN,
	author = {Juexin Wang, Anjun Ma, Yuzhou Chang, Jianting Gong, Yuexu Jiang, Hongjun Fu, Cankun Wang, Ren Qi, Qin Ma, Dong Xu},
	title = {scGNN: a novel graph neural network framework for single-cell RNA-Seq analyses},
	elocation-id = {2020.08.02.233569},
	year = {2020},
	doi = {10.1101/2020.08.02.233569},
	publisher = {Cold Spring Harbor Laboratory},
	URL = {https://www.biorxiv.org/content/10.1101/2020.08.02.233569v1},
	eprint = {https://www.biorxiv.org/content/10.1101/2020.08.02.233569v1.full.pdf},
	journal = {bioRxiv}
}
```

ACKNOWLEDGEMENTS
^^^^^^^^^^^^^^^^
This work was supported by the National Institutes of Health’s National Institute of General Medical Sciences (awards R35-GM126985 and R01-GM131399).

Support
^^^^^^^
Feel free to submit an `issue <https://github.com/juexinwang/scGNN/issues/new/choose>`_
or send us an `email <mailto:mail@scvelo.org>`_.
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

   getting_started
   DataProcessing
   Reproducibility
   Visualization

.. toctree::
   :caption: Example Datasets
   :maxdepth: 1
   :hidden:

   TrainData
   Casestudy

.. |Docs| image:: https://readthedocs.org/projects/scvelo/badge/?version=latest
   :target: https://scvelo.readthedocs.io

.. |br| raw:: html

  <br/>

  <!-- Calendly link widget begin -->
  <link href="https://assets.calendly.com/assets/external/widget.css" rel="stylesheet">
  <script src="https://assets.calendly.com/assets/external/widget.js" type="text/javascript"></script>
  <a href="" onclick="Calendly.initPopupWidget({url: 'https://calendly.com/scvelo'});return false;">here</a>
  <!-- Calendly link widget end -->