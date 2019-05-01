

# clean
rm -fr /tmp/cristian

# make dir
mkdir /tmp/cristian

# clone
git clone https://github.com/cgarciae/start /tmp/cristian/start

# copy files
cp -a -R /tmp/cristian/start/home-files/. ~
