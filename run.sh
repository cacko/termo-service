#!/bin/zsh
source ~/.zshrc
direnv exec . sudo -E mamba run --live-stream -n termo-service uvicorn 'termo_service.app:create_app' --host 0.0.0.0 --port 23727  --log-level info --use-colors --factory --loop uvloop --access-log
