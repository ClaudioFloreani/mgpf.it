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
      
      r301 '/2011/03/150/', '/2011/03/17/150'
      r301 '/2011/04/come-cancellarsi-da-123people-com/', '/2011/04/11/come-cancellarsi-da-123people-com'
      r301 '/2011/03/about-elly/', '/2011/03/26/about-elly'
      r301 '/2011/09/zenlife-lifehacking-for-hackers/', '/2011/09/29/zenlife-lifehacking-for-hackers'
      r301 '/2011/02/quando-motorola-batte-apple/', '/2011/02/07/quando-motorola-batte-apple'
      r301 '/2011/08/vitrociset-sfondata-di-nuovo/', '/2011/08/03/vitrociset-sfondata-di-nuovo'
      r301 '/2011/08/ci-vediamo-a-inowfurt-al-ccc-summer-camp/', '/2011/08/05/ci-vediamo-al-chaos-communication-camp'
      r301 '/2011/07/presi-per-il-portafogli/', '/2011/07/27/presi-per-il-portafogli'
      r301 '/2011/03/il-vero-spot-apple/', '/2011/03/04/il-vero-spot-apple'
      r301 '/2011/08/anonita-perche-vitrociset-e-cnaipi/', '/2011/08/01/anonita-perche-vitrocisett-e-cnaipi'
      r301 '/2011/01/often-awsome/', '/2011/01/16/often-awsome'
      r301 '/2011/01/why-we-protest/', '/2011/01/15/why-we-protest'
      r301 '/2011/08/dove-finisce-anonymous-ed-inizia-lulzsec/', '/2011/08/04/dove-finisce-anonymous-ed-inizia-lulzsec'
      r301 '/2011/10/stay-hungry/', '/2011/10/06-stay-hungry'
      r301 '/2011/08/blink182-ed-il-furto-piu-geniale/', '/2011/08/05/blink182-ed-il-furto-piu-geniale'
      r301 '/2011/08/non-e-complotto-e-semplice-stupidita/', '/2011/08/24/non-e-complotto-e-semplice-stupidita'
      r301 '/2011/03/ci-vediamo-lunedi-7-a-padova/', '/2011/03/06/ci-vediamo-lunedi-7-a-padova'
      r301 '/2011/08/ci-vediamo-al-chaos-communication-camp/', ''
      r301 '/2011/08/gli-utenti-ie-branco-minorati-mentali/', '/2011/08/02/gli-utenti-ie-branco-minorati-mentali'
      r301 '/2011/08/tool-di-computer-forensics-opensource-python', '/2011/08/04/tool-di-computer-forensics-opensource-python'
      r301 '/2011/01/startup-school-qualche-riflessione/', '/2011/01/17/startup-school-qualche-riflessione'
      r301 '/2011/01/sti-maledetti-pirati-terroni/', '/2011/01/26/sti-maledetti-pirati-terroni'
      r301 '/2011/08/vitrociset-modifica-wikipedia-per-fare-sparire-attacco', '/2011/08/01/vitrociset-modifica-wikipedia-per-fare-sparire-attacco'
      r301 '/2011/01/vogue-come-ls-magazine/', '/2011/01/14/vogue-come-ls-magazine'
      r301 '/2011/01/impressionante-nyc-mindrelic-timelapse/', '/2011/01/18/impressionante-nyc-mindrelic-timelapse'
      r301 '/2011/04/and-i-cant-see-it/', '/2011/04/13/and-i-cant-see-it'
      r301 '/2011/01/mandelbrot-in-3d-quando/', '/2011/01/20/mandelbrot-in-3d-quando'
      r301 '/2011/05/meraviglia-stupoer-incredulita/', '/2011/05/05/meraviglia-stupoer-incredulita'
      r301 '/2011/01/google-censura-bittorrent-rapite-bambino/', '/2011/01/29/google-censura-bittorrent-rapite-bambino'
      r301 '/2011/01/fan-page-moderazione-facebook-conversationflow', '/2011/01/27/fan-page-moderazione-facebook-conversationflow'
      r301 '/2011/03/ci-vediamo-sabato-1203-al-cat-milano-con-the-fool', '/2011/03/10/ci-vediamo-sabato-1203-al-cat-milano-con-the-fool'
      r301 '/2011/01/la-maleducazione-ai-tempi-di-internet/', '/2011/01/21/la-maleducazione-ai-tempi-di-internet'
      r301 '/2011/02/ora-che-ve-lo-dicono-anche-che-siete-schedati-ridete-ancora', '/2011/02/02/ora-che-ve-lo-dicono-anche-che-siete-schedati-ridete-ancora'
      r301 '/2011/08/vitrociset-sfondata-di-nuovo/ce5z0/', '/2011/08/03/vitrociset-sfondata-di-nuovo'
      r301 '/2011/01/ciao-sono-matteo-e-questo-e-il-mio-blog/', '/2011/01/13/ciao-sono-matteo-e-questo-e-il-mio-blog'
      r301 '/2011/01/social-media-security-limportanza-di-moderare-facebook-e-la-propria-fanpage', '/2011/01/31/social-media-security-limportanza-di-moderare-facebook-e-la-propria-fanpage'
      r301 '/2011/08/dove-finisce-anonymous-ed-inizia-lulzsec/hackers-com', '/2011/08/04/dove-finisce-anonymous-ed-inizia-lulzsec'
      r301 '/2011/10/ho-guardato-unalba-e-mi-son-chiesto-come-fa-a-non-esistere-dio', '/2011/10/07/ho-guardato-unalba-e-mi-son-chiesto-come-fa-a-non-esistere-dio'
      r301 '/articles/', '/archive.html'
      r301 '/contatti/', '/chisono.html'
      r301 '/profile/', '/chisono.html'
      r301 %r{^/(.*)/$}, '/$1' # trailing slash
      r301 '/chi-sono', '/chisono.html'
      r301 '/rss', '/atom.xml'
      r301 '/feed', '/atom.xml'
      r301 '/feed/rss', '/atom.xml'
      r301 '/feed/', '/atom.xml'
      r301 '/sitemap.xml.gz', '/sitemap.xml'
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