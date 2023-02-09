FROM python

WORKDIR /

COPY requirements.txt /

RUN pip install -r requirements.txt

COPY . .

RUN mkdir uploaded_files \
 && chown -R :root /uploaded_files \
 && chmod -R 0775 /uploaded_files

EXPOSE 5000

CMD ["python", "service_api.py"]