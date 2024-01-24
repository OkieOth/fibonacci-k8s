from flask import Flask, jsonify
from flask_restful import Api, Resource

import logging
log = logging.getLogger('werkzeug')
log.setLevel(logging.ERROR)

app = Flask(__name__)
api = Api(app)

class FibonacciResource(Resource):
    def get(self, number):
        try:
            number = int(number)
            fibonacci_sequence = calculate_fibonacci(number)
            return jsonify(fibonacci_sequence)
        except ValueError:
            return jsonify({"error": "Invalid input. Please provide a valid integer."}), 400

def calculate_fibonacci(n):
    fib_sequence = [0, 1]
    while len(fib_sequence) < n:
        fib_sequence.append(fib_sequence[-1] + fib_sequence[-2])
    return fib_sequence

api.add_resource(FibonacciResource, '/fibonacci/<number>')

if __name__ == '__main__':
    app.run(debug=False)
