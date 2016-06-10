# Script to automate installation of rdkit on Anaconda
# Should be executed from the /anaconda2/rdkit directory

conda install conda-build
conda install patchelf

git clone https://github.com/rdkit/conda-rdkit.git

cd conda-rdkit

# All commands in the described build procedure are assumed to run 
# in a shell or windows command prompt already configured to make 
# available conda and the compiler toolchain that may be needed for 
# the specific platform. Moreover, the working directory for the build 
# commands described in this section is assumed to correspond with the 
# top level directory of the recipes distribution (where this README 
# file is located

# The build process doesn't require activating and configuring a 
# dedicated python environment. The build commands may run within the 
# root environment and conda will take care of automating all of the 
# process, starting from downloading the source code and proceeding to 
# unpacking it into a suitable working directory, creating the necessary 
# build and test environments with the required dependencies, compiling, 
# testing and finally storing the resulting binary packages into a local 
# directory.

# If all of the necessary conditions are satisfied, building the RDKit 
# may then reduce to running the following two commands:


conda build boost
conda build rdkit

# optional package
conda build rdkit-postgresql