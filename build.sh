# install dependencies
sudo apt-get install build-essential cmake git libx11-dev freeglut3-dev libxcb-image0-dev libudev-dev libjpeg8-dev libopenal-dev libsndfile1-dev libfreetype6-dev

# clone repo
git clone --recurse-submodules https://github.com/SFML/CSFML
cd CSFML

# get the absolute path to SFML
SFML="$(realpath ../SFML)"

# build
cmake -DCMAKE_MODULE_PATH="$SFML/cmake/Modules" .
make
make install