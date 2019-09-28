rule all:
    input:
        "analysis-notebook.html",
        "report.pdf",
        "slides.html"


rule notebook:
    input:
        "analysis-notebook.ipynb"
    output:
        "analysis-notebook.html"
    shell:
        """
        jupyter nbconvert analysis-notebook.ipynb --to html
        """



rule report:
    input:
       "report.Rmd"
    output:
        "report.pdf"
    shell:
        """
        Rscript -e "rmarkdown::render('report.Rmd')"
        """


rule slides:
    input:
       "slides.Rmd"
    output:
        "slides.html"
    shell:
        """
        Rscript -e "rmarkdown::render('slides.Rmd')"
        """
