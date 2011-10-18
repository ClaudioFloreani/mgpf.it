module Jekyll
  class TagIndex < Page    
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag
      self.data['title'] = "Archivio del tag &ldquo;"+tag+"&rdquo;"
    end
  end
  class TagGenerator < Generator
    safe false
    def generate(site)
      if site.layouts.key? 'tag_index'
        dir = 'tag'
        site.tags.keys.each do |tag|
          puts "building tags archives: '#{tag}' start..."
          write_tag_index(site, File.join(dir, tag), tag)
        end
      end
      puts "done with tagging! Hurray!"
    end
  
    def write_tag_index(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
      puts "building tags archives: '#{tag}' done!"
    end
  end
end