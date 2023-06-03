# raspicat2

## Install vcstool

```
sudo apt install python3-vcstool
```

## How to set up workspace

* Install

```
git clone git@github.com:CIT-Autonomous-Robot-Lab/raspicat2.git
cd raspicat2 && mkdir src
vcs import src < raspicat.repos --debug
rosdep update
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install
```

* Update

```
vcs import src < raspicat.repos --debug
vcs pull src --debug
```
