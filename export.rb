require "csv"
require "to_slug"

CSV.foreach("tinyletterarchive.csv") do |row|
  filename = row[2].to_slug + "-" + row[0].to_slug
  html = File.new(filename + ".html", "w+")
  html.puts "<h1>" + row[0] + "</h1>"
  html.puts "<h2>" + row[2] + "</h2>"
  html.puts row[1]
  html.close()
end

