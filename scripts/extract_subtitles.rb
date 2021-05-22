# Assume the first argument is the directory we want to traverse
DIRECTORY = ARGV[0]

Dir.glob("**/*.mkv") do |file|
  puts file.expand_path
  puts file.basename
  #system("ffmpeg", "-i", file.expand_path, "-o", "#{file.basename}.srt")
end