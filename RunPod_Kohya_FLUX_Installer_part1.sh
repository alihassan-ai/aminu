apt update --yes
yes | apt-get install python3.10-tk
apt-get install psmisc --yes

cd /workspace

git clone https://github.com/bmaltais/kohya_ss.git

cd /workspace/kohya_ss

git checkout sd3-flux.1

python3 -m venv venv

source venv/bin/activate

yes | apt-get install python3.10-tk

./setup.sh -n


