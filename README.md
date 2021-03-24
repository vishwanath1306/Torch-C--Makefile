# Torch C++ Makefile Flags

Step 1: Download the Torch C++ package from [pytorch.org](pytorch.org)
```
root@server:~# curl https://download.pytorch.org/libtorch/cpu/libtorch-cxx11-abi-shared-with-deps-1.8.0%2Bcpu.zip --output libtorch.zip

root@server:~# unzip libtorch.zip
```

Step 2: Getting the model file (Make sure you have pytorch installed)
```
root@server:~# python3 build_model.py
```
This will give you the `traced_resnet_model.pt` file mentioned in `hack.cpp` file. 

Step 3: Compiling the C++ file
```
root@server:~# make all
```
If you download the Pre-cxx11 ABI folder, then use `-D_GLIBCXX_USE_CXX11_ABI=0` flag in Makefile
 
Step 4: Exporting the library path
```
root@server:~# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/libtorch/lib
```
Step 5: Run the program
```
root@server:~# ./hack.o
```

## Contributors
* [Vishwanath Seshagiri](https://vishwanath1306.github.io/)
* [Vyas Giridhar](https://github.com/vyasgiridhar)