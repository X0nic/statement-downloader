require "thor"
require "faraday"

class Statement::Downloader::CLI < Thor
  desc "get URL", "URL to pull from"
  def get(url)
    puts "Connecting to: #{url}"

    conn = Faraday.new(:url => url)
    response = conn.get

    puts response.body
  end
end
