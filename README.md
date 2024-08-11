# raspicat2

## Install vcstool

```
sudo apt update
sudo apt install python3-vcstool
```

## How to set up workspace

* Install

```
bash <(curl -s https://raw.githubusercontent.com/CIT-Autonomous-Robot-Lab/raspicat2/main/install.sh)
```

* Update

```
vcs import src < raspicat.repos --debug
vcs pull src --debug
```
