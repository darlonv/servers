#!/bin/bash
mkdir -p data
docker run -td -p 8888:8888 -p 8501:8501 -v "$PWD"/data:/data darlon/jupyter:1.0
