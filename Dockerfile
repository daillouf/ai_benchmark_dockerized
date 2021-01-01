FROM python:3.6
RUN apt-get update && apt-get install --yes --force-yes --no-install-recommends libmariadbclient-dev build-essential
ENV PYTHONDONTWRITEBYTECODE notemptystring
RUN mkdir code
COPY . code/
WORKDIR code
RUN pip install -r requirements.txt 
