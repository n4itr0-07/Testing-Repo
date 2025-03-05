
from flask import Flask, render_template, request, send_file
import subprocess
import os

app = Flask(__name__)

@app.route("/")
def index():
    """Render the homepage."""
    return render_template("index.html")


@app.route("/download", methods=["POST"])
def download():
    """Handle video download requests."""
    url = request.form.get("url")
    resolution = request.form.get("resolution")

    try:
        # Ensure the downloads folder exists
        downloads_folder = "downloads"
        if not os.path.exists(downloads_folder):
            os.makedirs(downloads_folder)

        # Output file path
        output_file = os.path.join(downloads_folder, "video.mp4")

        # yt-dlp command to download the video in the requested resolution
        command = [
            "yt-dlp",
            "-f", f"bestvideo[height<={resolution}]+bestaudio/best",
            "-o", output_file,
            url,
        ]

        # Run the command
        subprocess.run(command, check=True)

        # Send the downloaded file to the user
        return send_file(output_file, as_attachment=True)

    except Exception as e:
        return f"Error: {e}"


if __name__ == "__main__":
    # Run the Flask app
    app.run(debug=True)
