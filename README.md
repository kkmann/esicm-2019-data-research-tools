## ESICM 2019 Workshop - practical tools to make data research easier and better

this repository contains the entire workshop materials: slides (sources), examples, and 
all necessary configurations to run the examples in an interactive [binder](https://mybinder.org/) session.

### Topics covered:

* literate programming ([jupyter notebook](https://jupyter.org/); 
[R markdown](https://rmarkdown.rstudio.com/) + [knitr](https://yihui.name/knitr/) + [pandoc](https://pandoc.org/))
* workflow automation via [snakemake](https://snakemake.readthedocs.io/en/stable/)
* dependency isolation via [singularity](https://sylabs.io/)

Note that this is more of a tour'd horizon and is not intended as a full tutorial.

### Building the slides

1. open your own binder instance at https://bit.ly/2lXMiTg
2. open a new terminal window
3. execute the command `snakemake` (creates slides.html)

More details can be found in the slides.

### Questions, Feedback, & Contributions are welcome!

### Further reading

* [The Turing Way](https://the-turing-way.netlify.com)
