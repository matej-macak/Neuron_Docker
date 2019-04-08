FROM neuron:latest

# Copy mods to the new file folder
WORKDIR /shared
COPY /Mods/* /neuron/nrn-7.5/x86_64/bin/

RUN cd /neuron/nrn-7.5/x86_64/bin \
	&& chmod +x nrnivmodl \
	&& ./nrnivmodl

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root","--port=8888","--no-browser"]

# Start with: docker run -it -p 8888:8888 -v ~/OneDrive/Docker/Jupyter:/work jupyter
# -v flag binds the folder as a shared one for the image to see
