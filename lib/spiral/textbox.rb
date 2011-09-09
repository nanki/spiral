class Spiral::Textbox
  def initialize(input=$stdin)
    @input = input
  end

  def process(ch)
    case ch
    when "\027" # <C-W>
      @string = @string.rstrip.split(/\b/)[0...-1].join
    when "\b"
      @string = @string.split(//)[0...-1].join
    when "\r"
    when "\003", "\004"
      throw :exit
    when "\x10" # <C-p>
      return :prev
    when "\x0e" # <C-n>
      return :next
    else
      case ch
      when /[^[:cntrl:]]/
        @string += ch
      else
      end
    end

    @string
  end

  def main
    @input.raw do |io|
      yield @string = ""

      return if catch(:exit) do
        io.chars do |ch|
          prev = @string.dup
          result = process(ch)
          next if !(Symbol === result) && result == prev
          yield result
        end
      end
    end
  end
end
