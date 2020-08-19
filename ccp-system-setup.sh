sudo apt update && sudo apt upgrade -y
sudo apt -y install build-essential autoconf libtool libelf-dev 
# perf
sudo apt -y install linux-tools-common linux-tools-`uname -r`-generic linux-tools-generic
# Mahimahi dependencies
sudo apt -y install autotools-dev dh-autoreconf iptables protobuf-compiler libprotobuf-dev pkg-config libssl-dev dnsmasq-base ssl-cert libxcb-present-dev libcairo2-dev libpango1.0-dev iproute2 apache2-dev apache2-bin
# iperf
sudo apt install -y iperf
# Rust bindgen dependencies
sudo apt -y install llvm-3.9-dev libclang-3.9-dev clang-3.9
curl https://sh.rustup.rs -sSf > rust.install.sh
chmod u+x ./rust.install.sh
chown vagrant:vagrant ./rust.install.sh
su -c "./rust.install.sh -y -v" vagrant
# Python setuptools
sudo apt -y install python3-pip
sudo pip3 install setuptools setuptools_rust
# mahimahi setup
echo "sudo sysctl -w net.ipv4.ip_forward=1" >> ~/.bashrc

# plotting dependencies
sudo apt install -y r-base gnuplot
sudo apt install -y r-cran-ggplot2 
sudo pip3 install numpy
