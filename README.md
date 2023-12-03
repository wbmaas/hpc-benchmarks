# Benchmarks

## Dependencies

```shell
sudo apt update &&
sudo apt -y install make &&
sudo apt -y install gcc &&
sudo apt -y install python2 &&
sudo ln -s /usr/bin/python2 /usr/bin/python &&
git clone https://github.com/wbmaas/benchmarks.git
```

## Run

```shell
# For each benchmark navigate to it's folder
cd FFT
make clean && make
# Edit the execute.sh file by setting the number of cores to execute on the for loop
./execute.sh
```

## Save date

```shell
tar czvf intel-8-out.tar.gz FFT/out HPCG/out JA/out LULESH/out PO/out ST/out NAS/bin/out RODINIA/hotspot/out RODINIA/lud/out RODINIA/streamcluster/out parboil/out
# Exit the VM and run 
scp -J guest@<guest-ip> ubuntu@<server-ip>:/home/ubuntu/benchmarks/intel-<cores>-out.tar.gz /home/<username>/Documents
```
