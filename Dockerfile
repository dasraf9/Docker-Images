FROM tensorflow/tensorflow:latest-py3

RUN pip3 --no-cache-dir install \
        gym \
        keras \
		jupyterlab

RUN jupyter serverextension enable --py jupyterlab --sys-prefix

CMD ["/usr/local/bin/jupyter", "lab" ,"--allow-root"]