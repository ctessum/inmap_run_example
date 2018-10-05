FROM jupyter/scipy-notebook

RUN pip install --upgrade pip

RUN pip install grpcio grpcio-tools

COPY eieio.proto .

RUN python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. eieio.proto
