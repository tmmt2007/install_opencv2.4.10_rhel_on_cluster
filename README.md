# install_opencv2.4.10_rhel_on_cluster
Installing opencv 2.4.10 from source for Redhat 6.2 on cluster

The installation process happens on the head node; 
While the directory '/shared/apps/' locates at the head node and shares with all compute nodes.

After installing, a new module file 'opencv-2.4.10' will be created manually and deployed on all compute nodes.

Finally, the users will use the module (software) on every compute node as:

$ module whatis opencv-2.4.10
opencv_cuda7.0       : loads the modules environment for opencv version 3.0.0 (gnu 4.8.1 compiler version) executibles, libraries, and include files.
Needs the following modules to be loaded as prerequisites
module load gnu-4.4-compilers 
module load fftw-3.3.3
module load platform-mpi
module load gnu-4.8.1-compilers
module load python-2.7.5
module load oracle_java_1.7u40
module load matlab_mdcs_2016a
module load ant-1.9.3
module load apache-maven-3.2.3
module load protobuf-2.6.1
module load vtk-5.10.1
module load eigen-3.2.4

## The prerequisites shown above are written manually in the modulefile according to the requiements of using opencv-2.4.10 

$ module load opencv-2.4.10
