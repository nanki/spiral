require 'open3'

module Spiral
  module Renderer
    class W3m
      def render(html, options={})
        opt = {:cols => 80}.merge options
        Open3.popen3 "w3m -cols #{opt[:cols]} -dump -O UTF8 -T text/html" do |i, o, e|
          i.write html
          i.close
          o.read.strip
        end
      end
    end
  end
end
