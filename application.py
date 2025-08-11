from flask import Flask
app=Flask(__name__)
@app.route("/")
def home():
  return "Hello from Api-Flask in Docker!"
if__naame__=="__main__":
  app.run(host="0.0.0.0",port=5000)
