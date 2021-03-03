FROM python-data-eng-light

#install nodejs
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs
# update nodejs et npm
RUN npm install -g n
RUN n latest

#install elyra
RUN pip3 install --upgrade elyra && jupyter lab build

#check
RUN jupyter serverextension list
RUN jupyter server extension list
RUN jupyter labextension list

#run
ENTRYPOINT ["jupyter", "lab", "--allow-root", "--no-browser", "--ip=0.0.0.0"]
