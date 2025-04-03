cd /workspace/mlc-llm/3rdparty/tvm
rm -rf build
mkdir -p build
cp cmake/config.cmake build/config.cmake

read -n 1 -s -r -p "Press any key to continue"

cd /workspace/mlc-llm/3rdparty/tvm/build
cmake ..
make -j$(nproc)

export PYTHONPATH=$PYTHONPATH:/workspace/mlc-llm/3rdparty/tvm/python/

cd /workspace/mlc-llm/python
pip install -e .
pip install psutil