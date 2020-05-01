# Cloudera Data Science Workbench Handson Workshop
Tour of Cloudera Data Science Workbench / Cloudera Machine Learning

## Workbench
There are several scripts provided which walk through the interactive capabilities of Cloudera Data Science Workbench.

1. **Basic Python visualizations (Python 2).** Demonstrates:
  - Markdown via comments
  - Jupyter-compatible visualizations
  - Simple console sharing
2. **PySpark (Python 2).** Demonstrates:
  - Easy connectivity to (kerberized) Spark in YARN client mode.
  - Access to Hadoop HDFS and S3 (e.g. `hdfs dfs -ls /`).
3. **R** Demonstrates:
  - Run R code on CDSW, showing arules library
4. **Advanced visualization with Shiny (R)** Demonstrates:
  - Use of 'shiny' to provide interactive graphics inside CDSW
5. **Working with Experiments and Models** Demonstrates:
  - Batch interface for running experiments in Batch while changing hyperparameters.
  - Capture experiment key results
  - Deploy the best predictive model as a REST service
6. **

## Jobs
We recommend setting up a **"Nightly Analysis"** job to illustrate how data scientists can easily automate their projects.


## Setup instructions
Note: You only need to do this once.

1. In a Python 3 Session:
```Python
!pip3 install --upgrade dask
!pip3 install --upgrade keras
!pip3 install --upgrade matplotlib==2.0.0.
!pip3 install --upgrade pandas_highcharts
!pip3 install --upgrade protobuf
!pip3 install --upgrade tensorflow==1.3.0.
!pip3 install --upgrade seaborn
!pip3 install --upgrade numpy
```
Note, you must then stop the session and start a new Python session in order for all the packages to be seen.

2. In an R Session:
```R
install.packages('sparklyr')
install.packages('plotly')
install.packages("nycflights13")
install.packages("Lahman")
install.packages("mgcv")
install.packages('shiny')
install.packages("arules")
install.packages("readr")
```

3. Stop all sessions, then proceed.

‹
