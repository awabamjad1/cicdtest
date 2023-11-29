from flask import Flask, request, jsonify
from flask_cors import CORS  # Import the CORS extension

app = Flask(__name__)
CORS(app)  # Enable CORS for all routes in the Flask app

@app.route('/reverse', methods=['POST'])
def reverse_word():
    wordToReverse = request.form.get('word')
    if wordToReverse is None:
        return jsonify({'error': 'Word parameter is missing in the request'}), 400
    return jsonify({'reversed_word': wordToReverse[::-1]}), 200

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
