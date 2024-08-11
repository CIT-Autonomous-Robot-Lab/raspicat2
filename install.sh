git clone git@github.com:CIT-Autonomous-Robot-Lab/raspicat2.git $HOME/raspicat2
grep -q "source $HOME/raspicat2/install/setup.bash" $HOME/.bashrc || echo "source $HOME/raspicat2/install/setup.bash" >> $HOME/.bashrc
grep -q "export RASPICAT2_WS=$HOME/raspicat2" $HOME/.bashrc || echo "export RASPICAT2_WS=$HOME/raspicat2" >> $HOME/.bashrc
source $HOME/.bashrc
cd $RASPICAT2_WS && mkdir src
vcs import src < raspicat.repos --debug
rosdep update
rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO
colcon build --symlink-install
source $HOME/.bashrc