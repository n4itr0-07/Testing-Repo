from pytube import YouTube, Playlist

def download_video(video_url, quality):
    try:
        yt = YouTube(video_url)

        if quality == "high":
            video_stream = yt.streams.filter(progressive=True, file_extension='mp4').order_by('resolution').desc().first()
        elif quality == "low":
            video_stream = yt.streams.filter(progressive=True, file_extension='mp4').order_by('resolution').asc().first()
        else:
            print("Invalid quality option. Please choose either 'high' or 'low'.")
            return

        print(f"Downloading: {yt.title}")
        video_stream.download()
        print("Download completed!")
        
    except Exception as e:
        print(f"Error: {str(e)}")

def download_playlist(playlist_url, quality):
    try:
        pl = Playlist(playlist_url)
        print(f"Downloading playlist: {pl.title}")
        print(f"Total videos: {len(pl.video_urls)}")

        for video_url in pl.video_urls:
            download_video(video_url, quality)
        print("Playlist download completed!")
        
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    option = input("Do you want to download a 'video' or a 'playlist'? ").lower()
    url = input("Enter the YouTube URL: ")
    quality = input("Enter the quality (high/low): ").lower()

    if option == "video":
        download_video(url, quality)
    elif option == "playlist":
        download_playlist(url, quality)
    else:
        print("Invalid option.")
