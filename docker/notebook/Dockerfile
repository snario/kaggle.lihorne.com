FROM jupyter/datascience-notebook:6399d2faf16f

USER jovyan

# Add permanent pip/conda installs, data files, other user libs here
RUN pip install shapely[vectorized]==1.6b2

USER root

# Add permanent apt-get installs and other root commands here
# e.g., RUN apt-get install npm nodejs
