#!zsh

if [ $# -eq 0 ]; then
	buildType=Debug
else
	buildType=$1
fi

git submodule update --init --recursive && mkdir -p build && cd build && conan install --build=missing .. && cmake .. -DCMAKE_BUILD_TYPE=$buildType
