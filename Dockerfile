FROM python:3.12.2

COPY . /preprocessing/

WORKDIR /preprocessing

RUN pip install pandas
RUN pip install jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]