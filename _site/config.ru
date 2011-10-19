require 'rubygems'
require 'rack'
require 'rack/contrib/try_static'
require 'rack/rewrite'

def quattrocentoquattro(env)
  puts "[404] - #{env["REQUEST_URI"]}"
  File.open('_site/404.html', File::RDONLY)
end

use Rack::TryStatic, 
    :root => "_site",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # tries to recover from missing .html

    # Legacy files redirection
    use Rack::Rewrite do
      r301 %r{.*}, 'http://mgpf.it$&', :if => Proc.new {|rack_env|
          rack_env['SERVER_NAME'] != 'mgpf.it' && ENV['RACK_ENV'] == 'production'
      } # Force single domain
      r301 %r{^/(.*)/$}, '/$1' # trailing slash
      r301 '/chi-sono', '/chisono.html'
      r301 '/rss', '/atom.xml'
      r301 '/feed', '/atom.xml'
      r301 '/feed/', '/atom.xml'
      # r302 '/wiki/Greg_Jastrab', '/greg'
      # r301 %r{(\w+)_\w+}, '/$1'
    end
    
    run lambda { |env|
      [
        404, 
        {
          'Content-Type'  => 'text/html', 
          'Cache-Control' => 'public, max-age=86400' 
        },
        quattrocentoquattro(env)
      ]
    }