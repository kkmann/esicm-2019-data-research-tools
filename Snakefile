rule all:
    input:
        "analysis-notebook.html",
        "report.pdf",
        "slides.html"



rule notebook:
    input:
        "analysis-notebook.ipynb",
        "mnist/x_test.npy",
        "mnist/x_train.npy",
        "mnist/y_test.npy",
        "mnist/y_train.npy"
    output:
        "analysis-notebook.html"
    singularity:
        "container.sif"
    shell:
        """
        jupyter nbconvert analysis-notebook.ipynb --to html
        """



rule report:
    input:
       "report.Rmd",
       "mnist/x_test.npy",
       "mnist/x_train.npy",
       "mnist/y_test.npy",
       "mnist/y_train.npy"
    output:
        "report.pdf"
    singularity:
        "container.sif"
    shell:
        """
        Rscript -e "rmarkdown::render('report.Rmd')"
        """


rule slides:
    input:
       "slides.Rmd"
    output:
        "slides.html"
    singularity:
        "container.sif"
    shell:
        """
        Rscript -e "rmarkdown::render('slides.Rmd')"
        """



rule download_data:
    output:
        "mnist/x_test.npy",
        "mnist/x_train.npy",
        "mnist/y_test.npy",
        "mnist/y_train.npy"
    shell:
        """
        R -e "download.file('https://zenodo.org/record/3464160/files/mnist.zip?download=1', 'mnist.zip')"
        R -e "unzip('mnist.zip')"
        """

rule download_container:
    output:
        "container.sif"
    shell:
        """
        R -e "download.file('https://zenodo.org/record/3464160/files/container.sif?download=1', 'container.sif')"
        """
