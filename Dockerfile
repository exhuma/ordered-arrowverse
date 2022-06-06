FROM python:3.9-slim
ENV REDIS_URL=""
ADD dist/ordering-1.1.5-py3-none-any.whl /
RUN pip install /ordering-1.1.5-py3-none-any.whl
RUN pip install hypercorn
ENTRYPOINT ["/usr/local/bin/hypercorn", "-b", "0.0.0.0", "ordering:app"]
EXPOSE 8000
