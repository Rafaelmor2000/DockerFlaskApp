from flask import Flask, render_template, redirect, url_for, request
import os

app = Flask(__name__)


@app.route('/', methods=['GET', 'POST'])
def login():
    error = None
    if request.method == 'POST':
        if request.form['username'] != request.form['username'].capitalize() or not request.form['password'].isalnum():
            error = 'Invalid Credentials. Please try again.'
        else:
            return redirect(url_for('loginSuccess'))
    return render_template('index.html', error=error)

@app.route('/loginSuccess')
def loginSuccess():
    return render_template('success.html')

if __name__ == "__main__":
    port = int(os.environ.get('PORT', 5000))
    app.run(debug=True, host='0.0.0.0', port=port)