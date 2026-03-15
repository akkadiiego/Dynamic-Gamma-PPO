#!/bin/bash

echo "--- 1. Installing PyTorch with support CUDA 11.8 ---"
pip install torch==2.0.1+cu118 torchvision==0.15.2+cu118 torchaudio==2.0.2+cu118 --index-url https://download.pytorch.org/whl/cu118

echo "--- 2. Instaling other libraries ---"
pip install -r requirements.txt

echo "--- 3. Instalating torch-ac in editable mode ---"
pip install -e torch-ac

echo "--- ¡INSTALATION COMPLETED! ---"
