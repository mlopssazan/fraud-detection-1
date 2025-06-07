FROM python:3.9
WORKDIR /app
COPY . /app
COPY fraud_model.pkl /app/
RUN pip install fastapi uvicorn scikit-learn joblib pydantic
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
