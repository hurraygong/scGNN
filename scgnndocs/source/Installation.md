## Installation

Installation Tested on Ubuntu 16.04 and CentOS 7 with Python 3.6.8

### From Source:

Start by grabbing this source codes:

```bash
git clone https://github.com/scgnn/scGNN.git
cd scGNN
```

### Option 1 : (Recommended) Use python virutal enviorment with conda（<https://anaconda.org/>）

```shell
conda create -n scgnnEnv python=3.6.8 pip
conda activate scgnnEnv
conda install r-devtools
conda install -c r r-igraph
conda install -c cyz931123 r-scgnnltmg
pip install -r requirements.txt
```

### Option 2 : Direct install individually

Need to install R packages first, tested on R >=3.6.1:

In R command line:

```R
install.packages("devtools")
install.packages("igraph")
library(devtools)
install_github("BMEngineeR/scGNNLTMG")
```

Then install all python packages in bash.

```bash
pip install -r requirements.txt
```

### Option 3: Use Docker

Download and install [docker](https://www.docker.com/products/docker-desktop).

Pull docker image **gongjt057/scgnn** from the [dockerhub](https://hub.docker.com/). Please beware that this image is huge for it includes all the environments. To get this docker image as base image type the command as shown in the below:

```bash
docker pull gongjt057/scgnn:code
```

Type `docker images` to see the list of images you have downloaded on your machine. If **gongjt057/scgnn** in the list, download it successfully.

Run a container from the image.

```bash
docker run -it gongjt057/scgnn:code /bin/bash
cd /scGNN/scGNN
```

Then you can proceed to the next step.
