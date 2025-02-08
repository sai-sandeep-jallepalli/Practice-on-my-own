#!/bin/bash

if [ -d "venv" ]; then
    source venv/Scripts/activate
else
    python3.8 -m venv venv
    source venv/Scripts/activate        
fi

# install dependencies
pip install -r requirements.txt

# Train
python train-scripts/train.py

# Run app
python app.py

# give this file excecutable permissions
# =================================================================
# chmod +x shell-scripts/run_pipeline.sh
#
# Now you can run the pipeline using the command:
#
# shell-scripts//run_pipeline.sh
#
# This will create a virtual environment, install the required dependencies,
# train the model, and start the Flask application.