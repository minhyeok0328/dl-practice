FROM continuumio/miniconda3:latest

ENV MINICONDA_PATH "/home/user/miniconda3"
ENV PATH="${MINICONDA_PATH}/bin:${PATH}"

RUN apt-get update -y && apt-get install git vim -y && \
    conda init && \
    conda create -n yeardream python=3.11.7 && \
    conda install requests selenium bs4 flask numpy pandas matplotlib seaborn ipykernel notebook -y && \
    conda install -c conda-forge langchain && \
    conda install pytorch::pytorch torchvision torchaudio -c pytorch -y

WORKDIR /app

# conda run -n yeardream jupyter lab --allow-root --ip='*' --NotebookApp.token='' --NotebookApp.password=''
# "--NotebookApp.token=''", "--NotebookApp.password=''" 얘들은 보안때문에 혼자 할 때만 이렇게 해야함 
ENTRYPOINT ["tail", "-f", "/dev/null"]
