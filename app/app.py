from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)


@app.route("/")
def home():
    return """
    <h1>AWS Flask Terraform CI/CD Working</h1>
    <p>Successfully deployed on AWS EC2.</p>
    <p>Cloud Engineer Assessment - Siddhan Intelligence</p>
    """


@app.route("/health")
def health():
    return jsonify({
        "status": "UP",
        "timestamp": datetime.utcnow().isoformat() + "Z"
    })


@app.route("/info")
def info():
    return jsonify({
        "application": "AWS Flask Terraform CI/CD",
        "framework": "Flask",
        "language": "Python",
        "version": "1.0.0"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=False)
