FROM jupyter/scipy-notebook

USER root
#Install latex
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt -y install latexmk tzdata texlive-xetex texlive-fonts-extra texlive-fonts-recommended lmodern

USER jovyan
#Install jupyterlab myst extensions
RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r ./requirements.txt

WORKDIR /data

# CMD ["sh", "-c", "jupyter-notebook --allow-root --ip '0.0.0.0' --no-browser --NotebookApp.token='' --NotebookApp.password=''"]

CMD ["jupyter", "lab", "--NotebookApp.token=''"]