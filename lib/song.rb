require 'pry'


class Song
  # code goes here

  attr_accessor(:title,:artist)

  def initialize()
    @title
  end

  def serialize
    title_formatted = @title.downcase.gsub(" ","_")
    open("./tmp/#{title_formatted}.txt", 'w') { |f|
       f.puts "#{artist.name} - #{@title}"
    }
  end
end
