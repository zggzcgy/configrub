#
# PATH:~/.profile
# NOTE:Profile configure
# DATE:2017-04-01
# VERSION:v1.0
#

# Automatic route JAVAHOME determination
mPath=$(readlink -f `which java`)
mPath=${mPath%%/bin*}

# DIY system path
export IDE_HOME=/usr/local/android-studio
export JAVA_HOME=${mPath:-$JAVA_HOME}
export ANDROID_SDK=/home/cgy/Android/Sdk
export ANDROID_SDK_HOM=/share/data/avd
export CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JRE_HOME=$JAVA_HOME/jre
export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$IDE_HOME/bin

# create link file
[ ! -d "/tmp/cgy" ]	&& mkdir /tmp/cgy -m 0760
[ ! -e "$HOME/tmp" ] && ln -s /tmp/cgy $HOME/tmp

