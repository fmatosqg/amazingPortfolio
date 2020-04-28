# portfolio_flutter

This project holds a flutter web project to display Fabio's porfolio.

## Video quality
Videos can have quality reduced with ffmpeg. For example:
`ffmpeg -i reel_adventures_skinning.webm -b:v 256k reel_adventures_skinning.mp4`

## Getting Started

# Deploy
- change the version on `index.html` on `main.dart.js?version=1` so your users' caches will not try to reuse same code
- `flutter build web`
- tar contents of `./build/web` folder and upload to server
