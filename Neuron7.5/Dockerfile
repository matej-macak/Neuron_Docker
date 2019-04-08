FROM jupyterlab:latest

ARG NRN_VERSION="7.5"
ARG NRN_ARCH="x86_64"
ARG NRN_CONFIGURE_OPT="--without-iv --with-nrnpython=/usr/local/bin/python3.6"

RUN mkdir /work
WORKDIR /work
# COPY requirements.txt /work

# Download and install neuron
RUN mkdir /neuron
WORKDIR /neuron

RUN wget http://www.neuron.yale.edu/ftp/neuron/versions/v${NRN_VERSION}/nrn-${NRN_VERSION}.tar.gz \
    && tar xvzf nrn-${NRN_VERSION}.tar.gz \
    && rm nrn-${NRN_VERSION}.tar.gz 

RUN cd nrn-${NRN_VERSION} \
    && ./configure --prefix=`pwd` ${NRN_CONFIGURE_OPT} \
    && make \
    && make install \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get autoclean

RUN cd nrn-${NRN_VERSION}/src/nrnpython \
    && python3.6 setup.py install


# Start with: docker run -it -p 8888:8888 -v ~/OneDrive/Docker/Jupyter:/jup jupyter
# -v flag binds the folder as a shared one for the image to see

# Run the program with: docker run -it -p 888
