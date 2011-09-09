require 'spiral/feed/base'
require 'ffi-chm'

module Spiral
  module Feed
    class Chm < Base
      def initialize(file)
        @chm = FFI::Chm::ChmFile.new file
      end
    end
  end
end
