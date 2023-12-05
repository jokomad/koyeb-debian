#!/bin/sh
#exec mkdir -p /tmp/1;
#exec tar -xf /1.tar.gz -C /tmp/1
exec chromium --renderer-process-limit=2  --origin-trial-disabled-features=WebGPU --disable-partial-raster --disable-mipmap-generation --render-process-limit=1 --disable-zero-copy --media-router=0 --disable-pings --no-default-browser-check --debug-devtools-frontend=0 --render-process-limit=1 --disable-zero-copy --disable-partial-raster --disable-mipmap-generation --memory-model=low --disable-features=GlobalMediaControls --disable-browser-side-navigation --disable-dev-shm-usage --disable-gpu --disable-software-rasterizer --no-sandbox --user-data-dir=/home/j/1 --disable-site-isolation-trials --enable-low-end-device-mode --renderer-process-limit=1

