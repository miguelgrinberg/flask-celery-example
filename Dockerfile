FROM python:3.6.4

# Create the user that will run the app
#RUN adduser --disabled-password --gecos '' ml-api-user


ENV INSTALL_PATH  /opt/working
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH


RUN pip install --upgrade pip
ADD requirements.txt $INSTALL_PATH
RUN pip install -r $INSTALL_PATH/requirements.txt

ENV AM_I_IN_A_DOCKER_CONTAINER Yes
ADD ./ $INSTALL_PATH

