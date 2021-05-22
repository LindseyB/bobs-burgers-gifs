 #!/usr/bin/env ruby
# Assume the first argument is the directory we want to traverse
DIRECTORY = ARGV[0]

puts "Directory is #{DIRECTORY}"
Dir.chdir(DIRECTORY)
Dir.glob("**/*.mkv") do |file|
  path = File.absolute_path(file)
  basename = File.basename(file, ".*") 
  directory = File.dirname(file)
  srtPath = File.join(directory, basename)
  system("ffmpeg", "-i", path, "#{srtPath}.srt")
end