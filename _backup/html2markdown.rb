require "rubygems"
require "yaml"
require "pp"
require "hpricot"
require File.join(File.dirname(__FILE__), "donwmark_it.rb")
Dir.glob("./_posts/*") {|file|
  c = File.open(file).read
  b = c.split("---")
  
  puts "-"* 60 + "\n"
  
  puts "---#{b[1]}---#{DownmarkIt.to_markdown(b[2])}"
  c = File.open(file, "w")
  c.write("---#{b[1]}---#{DownmarkIt.to_markdown(b[2])}") 
  c.close
  
}