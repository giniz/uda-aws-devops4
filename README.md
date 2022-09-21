[![CircleCI](https://dl.circleci.com/status-badge/img/gh/giniz/uda-aws-devops4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/giniz/uda-aws-devops4/tree/main)

## Project Overview

This is my 3rd project for Course Udacity AWS Devops.
This project aims to ensure the skills for containerizing a python app and orchestrating it using kubernetes.

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh` (need to pre-run ./upload_docker.sh)

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Directory Structure
Name          | Description
------------- | -------------
.circleci  | Contains CI/CD configuration using CircleCI
model_data  | Contains data for the python app
output_txt_files | Contains evidence logs for docker and kubernetes
Dockerfile | Dockerfile for creating app container
Makefile | Makefile for settingup project
app.py | The main file of python app
make_prediction.sh | Script for invoking app api
requirements.txt | File contains the neccessary libs for python app
run_docker.sh | Script for running docker container
run_kubernetes.sh | Script for deploying and monitoring log of app container
upload_docker.sh | Script for tagging and uploading the app container image to DockerHub
