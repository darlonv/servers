FROM jupyter/scipy-notebook

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r ./requirements.txt

WORKDIR /data

# CMD ["sh", "-c", "jupyter-notebook --allow-root --ip '0.0.0.0' --no-browser --NotebookApp.token='' --NotebookApp.password=''"]

CMD ["jupyter", "lab", "--NotebookApp.token=''"]