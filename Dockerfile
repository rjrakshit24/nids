#Pending

# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8

# Install pip requirements
COPY ./src/requirements.txt .
RUN python3 -m pip install -r requirements.txt

COPY ./src /app/

RUN chmod +rx /app/main.py

RUN which python3
# During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
CMD ["python3","-m","/app/main.py"]

ENTRYPOINT [ "/app/main.py" ]
