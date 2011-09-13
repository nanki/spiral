require 'nokogiri'

class Spiral::DisplayData
  attr_reader :title, :local
  attr_accessor :content

  def initialize(title, local, chm)
    @title = title
    @local = local
    @chm = chm
  end

  def content_key
    [@chm, @local].hash
  end

  def trim(html, id)
    doc = Nokogiri::XML.parse html
    e = doc.at_xpath('//*[@id="%s"]' % id)

    p = nil
    begin
      p = e.parent rescue nil
      ep = e.previous rescue nil
      while e = ep
        ep = e.previous
        e.remove
      end
    end while e = p

    doc.to_s
  end

  def retrieve
    id = @local.split("#")[1]
    html = @chm.retrieve_object("/#{@local.gsub(/#.*/, '')}") rescue "[Error]"
    html = trim(html, id) if id
    @content = ::Spiral::Renderer::W3m.new.render(html, :cols => $stdout.winsize.last)
  end

  def available?
    !!@content
  end

  def height
    @content.lines.size
  end
end
