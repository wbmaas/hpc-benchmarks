# HPC Benchmarks

This repository holds a set of High Performance Computing benchmarks and instructions on executing them.

## Dependencies

```shell
git clone https://github.com/wbmaas/hpc-benchmarks.git
sudo apt update &&
sudo apt -y install make &&
sudo apt -y install gcc &&
sudo apt -y install mpich &&
sudo apt -y install python2 &&
sudo ln -s /usr/bin/python2 /usr/bin/python &&
```

## Run

```shell
# For each benchmark navigate to its folder
cd FFT
make clean
make
# Edit the execute.sh with the desired number of cores
./execute.sh
```

## Save execution data

```shell
tar czvf intel-8-out.tar.gz FFT/out HPCG/out JA/out LULESH/out PO/out ST/out NAS/bin/out RODINIA/hotspot/out RODINIA/lud/out RODINIA/streamcluster/out parboil/out
# Exit the VM and run 
scp -J guest@<guest-ip> ubuntu@<server-ip>:/home/ubuntu/benchmarks/intel-<cores>-out.tar.gz /home/<username>/Documents
```
