# benchmarks

## Dependencies

sudo apt update
sudo apt install make
sudo apt install gcc
sudo apt install python2
whereis python2
sudo ln -s /usr/bin/python2 /usr/bin/python

## Run

make
#edit the execute.sh file by setting the number of cores
./execute.sh

## Save date

tar czvf intel-8-out.tar.gz FFT/out HPCG/out JA/out LULESH/out PO/out ST/out NAS/bin/out RODINIA/hotspot/out RODINIA/lud/out RODINIA/streamcluster/out parboil/out
#exit vm and run 
scp -J guest@xxx.xxx.xxx.x ubuntu@xxx.xx.xxx.xxx:/home/ubuntu/benchmarks/intel-<cores>-out.tar.gz /home/<username>/Documents
