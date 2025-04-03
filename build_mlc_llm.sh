mkdir -p build
cd build
echo "\n" | python3 ../cmake/gen_cmake_config.py | echo "n\n" 
cmake .. && cmake --build . --parallel $(nproc) && cd ..
python3 -m pip install Cython
