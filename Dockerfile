FROM python:3-slim
ENV DATABASE_URL sqlite:///tmp/ordering.db
ENV QUART_APP ordering
ADD dist/*.whl /tmp
RUN pip install /tmp/*.whl
ENTRYPOINT ["quart", "run", "--host", "0.0.0.0"]
EXPOSE 5000
