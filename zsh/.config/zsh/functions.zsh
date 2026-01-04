# Open files with default program
open() { xdg-open "$@" >/dev/null 2>&1 & }

# Compression
alias decompress="tar -xzf"
compress() {
    tar -czf "${1%/}.tar.gz" "${1%/}"
}

# Video transcoding
transcode-video-1080p() {
    ffmpeg -i "$1" -vf scale=1920:1080 -c:v libx264 -preset fast -crf 23 -c:a copy "${1%.*}-1080p.mp4"
}
transcode-video-4K() {
    ffmpeg -i "$1" -c:v libx265 -preset slow -crf 24 -c:a aac -b:a 192k "${1%.*}-optimized.mp4"
}

# PNG → JPG (good for wallpapers)
transcode-png2jpg() {
    magick "$1" -quality 95 -strip "${1%.*}.jpg"
}
