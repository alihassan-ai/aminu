cd /workspace
apt update --yes
yes | apt-get install python3.10-tk
apt-get install psmisc --yes

fuser -k 7860/tcp

cd /workspace/kohya_ss

git checkout sd3-flux.1
#git checkout 10e6f14110e95e4ee474fddeaa63430b8725ad4f
source venv/bin/activate

pip install torch==2.5.0+cu124 --index-url https://download.pytorch.org/whl/cu124

pip install torchvision==0.20.0+cu124 --index-url https://download.pytorch.org/whl/cu124

pip install xformers==0.0.28.post2 --index-url https://download.pytorch.org/whl/cu124

./gui.sh --listen=0.0.0.0 --share --noverify