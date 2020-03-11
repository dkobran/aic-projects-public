FROM tensorflow/tensorflow:1.13.1-py3-jupyter
EXPOSE 8888:8888

# Add custom notebook dependencies here
RUN python -m pip install matplotlib==2.2.4
RUN python -m pip install Flask==1.0.1
RUN python -m pip install pandas==0.24.0
RUN python -m pip install jupyterlab

RUN mkdir -p springboard
WORKDIR springboard
COPY . .
