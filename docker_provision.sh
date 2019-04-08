#!/bin/bash

cd Jupyterlab
docker build -t jupyter .

cd ..
cd Neuron7.5
docker build -t neuron .

cd ..
cd Neuron_w_Mods
docker build -t neuron_mods .