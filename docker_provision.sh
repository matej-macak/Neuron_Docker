cd Jupyterlab
sudo docker build -t jupyterlab .

cd ..
cd Neuron7.5
sudo docker build -t neuron .

cd ..
cd Neuron_w_Mods
sudo docker build -t neuron_mods .
