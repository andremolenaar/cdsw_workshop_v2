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
  - Run standalone R code on CDSW, showing arules library
  - Use sparklyr to benefit from the Spark engine in your R application
4. **Advanced visualization with Shiny (R)** Demonstrates:
  - Use of 'shiny' to provide interactive graphics inside CDSW
5. **Jobs** Demonstrates:
  - Use the easy to use self-service batch framework
6. **Working with Experiments and Models** Demonstrates:
  - Batch interface for running experiments in Batch while changing hyperparameters.
  - Capture experiment key results
  - Deploy the best predictive model as a REST service
7. **Applications** Demonstrates:
  - Self-serivice framework to deploy your own applications


#  INTRODUCTION
Cloudera Data Science Workbench is a new product from Cloudera launched in May 2017. It is based on the acquisition of Sense.io that we made in March 2016. Cloudera has taken this product, enhanced it and ensured that all workloads can be pushed down to Cloudera.

&nbsp;![](assets/markdown-img-paste-20200501105615165.png)

Cloudera Data Science workbench supports the R, Python, Scala programming languages. That capability could certainly be useful to Cloudera; the software could enable companies to make the most of their data scientists, who can then be more efficient with their use of company time and
infrastructure.

&nbsp;![](assets/markdown-img-paste-20200501105801725.png)

Cloudera’s goal with Cloudera Data Science workbench is to Help more data scientists use the power of Hadoop, make it easy and secure to add new users, use cases.

Why Hadoop for Data Science? Well here are the reasons:
- High volume, low cost shared storage - More data more kinds of data
- Parallel compute local to the data - more experiments, better results
- Scalable, fault tolerant - easy to scale out, not just scale up
- Flexible multipurpose data platform - easier path to production
- Superior flexibility and price / performance to any other data platform

## Lab 1 - Login to Cloudera Data Science Workbench (CDSW)

In this lab you’ll learn how to:
- Login to a Cloudera Data Science Workbench instance
- Set your Hadoop Authentication
- Navigate the Cloudera Data Science Workbench application

First thing you need to use the provided http link to your Cloudera Data Science Workbench environment. Login to this environment using the user ```admin``` and the provided password.

![](assets/markdown-img-paste-20200501111507756.png)

## Lab 2 - Creating a new project
When you have logged in, you will se the following screen:

![](assets/markdown-img-paste-20200501111620223.png)

You have on the left hand panel:
- Projects - where you create data science projects
- Sessions - Python, Scala or R sessions
- Experiments - batch experiments
- Models - build, deploy, and manage models as REST APIs to serve predictions
- Jobs - Run and schedule jobs and add dependencies
- Applications - Run self-built applications
- Settings - User, Hadoop Authentication, SSH Keys and permission settings
- Admin - Manage your Cloudera Data Science Workbench environment

In the top right hand corner you have:
- **Search bar** for search for projects
- **+**	adding new projects or new teams
- **User name** Account settings and Sign out - Same as settings in home screen
- ![](assets/markdown-img-paste-20200501131947103.png) menu to external tools like Hue, Cloudera Manager and others

Lets create a new project, by selecting the ![](assets/markdown-img-paste-2020050113225547.png) button.

Copy and paste this GitHub URL into the Git tab.
```
https://github.com/andremolenaar/cdsw_workshop_v2.git
```
Project name = Something like your name and Labs, and hit the ```Create Project``` button.

![](assets/markdown-img-paste-20200501132541791.png)

When the project is created, you will see a screen similar to this:

![](assets/markdown-img-paste-20200501133310609.png)

Now, Launch a Python 3 Session by selecting the 'Open Workbench' button, populate the options:
- Editor: workbench
- Engine Kernel: Python 3
- 1 vCPU / 2 GiB Memory
And hit the ```Launch Session``` button

![](assets/markdown-img-paste-20200501134641312.png)

After a few seconds, you will get to your workbench screen with a running Python3 engine.

![](assets/markdown-img-paste-20200501135850802.png)

1.	On the far left is a file browser (note the little ‘refresh’ icon at the top:  )
2.	In the middle is an editor open on the file that you selected - in this case the README.md file.
3.	On the right is your running session, with your python3 command prompt in the bottom. A green bar indicates it is ready to process something. When it is processing, it will turn red.

Lets enrich our Python3 environment with additional libraries.
Run the following commands from the python command prompt:

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
You can copy all those statements, and paste it at the python3 prompt.
When the libraries have been installed, you should see something like this:

![](assets/markdown-img-paste-20200501140545193.png)

## Lab 3 - Visualization and Sharing

Data Science is often about visualizing ideas, and then sharing them to persuade others to take action. CDSW lets you use the visualization tools you’d use naturally, and adds a neat twist to the whole idea of sharing.

Let’s get started:
1.	Start up a Python 3 session (1vCPU, 2GiB) in the same manner you did before. If your Python session is still running, you may reuse it. You might want to hit the ```Clear``` button in the right top, to clean your console screen.
2.	Select 1_python.py in the file browser
3.	Run the entire file (multiple ways of doing that - try to figure out more than one way. It should be pretty obvious!). One way of doing it would be to select the ```Run``` menu above your program code. ![](assets/markdown-img-paste-20200501142748451.png?s=50)





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
