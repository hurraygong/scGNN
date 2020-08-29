# Check Results

In outputdir now, we have four output files.

- ***_recon.csv**:        Imputed gene expression matrix. Row as gene, col as cell. First row as gene name, First col as the cell name. 

- ***_embedding.csv**:    Learned embedding (features) for clustering. Row as cell, col as embeddings. First row as the embedding names (no means). First col as the cell name.

- ***_graph.csv**:        Learned graph edges of the cell graph in tuples: nodeA,nodeB,weights. First row as the name.

- ***_results.txt**:      Identified cell types. First row as the name. 

For a complete list of options provided by scGNN:

```bash
python scGNN.py --help
```
