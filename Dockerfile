FROM python:3
ADD main.py /
RUN pip install flask
ENTRYPOINT ["python"]
CMD ["main.py"]