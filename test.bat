ffmpeg -f gdigrab -video_size 1920x1080 -framerate 30 -thread_queue_size 1024 -i desktop -f dshow -i audio="Stereo Mix (Realtek High Definition Audio)" -c:v h264_nvenc -profile:v high -b:v 6M -minrate 6M -maxrate 6M -bufsize 12M -bf 2 -preset fast -c:a aac -y output.mp4
