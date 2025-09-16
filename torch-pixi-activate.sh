if [ ${PIXI_NOACTIVATE:-0} -ne 0 ]; then
    if [ ! -f ./.env ]; then
        source ./torch-common.sh
    else
        export $(xargs < .env)
    fi
fi
