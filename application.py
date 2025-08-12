from flask import Flask
app=Flask(__name__)
@app.get("/health")
def health():
  return jsonify(status="ok")
@app.get("/books")
def books():
  return jsonify(data=["Clean Code", "Programatic Programmer"])
if__name__=="__main__":
  app.run(host="0.0.0.0", port=5000)
