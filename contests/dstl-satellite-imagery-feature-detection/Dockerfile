FROM jupyter/tensorflow-notebook:6399d2faf16f
MAINTAINER Liam Horne <liam@lihorne.com>

USER root

# GDAL
RUN apt-get update -y
RUN apt-get install -y libgdal1-dev

USER jovyan

# Combo Approach for pip (cache + auto-update)
RUN pip install pyproj==1.9.5.1
RUN pip install pygdal>=1.10.1.0,<=1.10.1.999
RUN pip install shapely[vectorized]==1.6b2
RUN pip install descartes==1.0.2
RUN pip install tifffile==0.10.0
RUN pip install git+https://github.com/tflearn/tflearn.git@4fef666

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

USER root
