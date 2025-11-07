from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Automatico Hello World 2 teste final"}
