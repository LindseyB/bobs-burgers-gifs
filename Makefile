# Why a Makefile and not rake? Well, historically I've had tools that python for gifs
# Now this new project will likely be a mix of ruby and those old python scripts
# So it just made sense 

VIDEO_DIR = 'C:\Users\hazar\Videos\BobBurgers\' # Don't tattle

srts: 
	ruby .\scripts\extract_subtitles.rb $(VIDEO_DIR)