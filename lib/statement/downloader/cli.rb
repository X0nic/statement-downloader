require "thor"

class Statement::Downloader::CLI < Thor
  desc "get URL", "URL to pull from"
  def get(url)
    puts "Connecting to: #{url}"
  end
end
