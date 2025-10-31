FROM python:3.14
RUN pip install streamlit
RUN mkdir /myapp
WORKDIR /myapp
COPY etl.py .
EXPOSE 8501
CMD ["streamlit", "run", "etl.py"]
