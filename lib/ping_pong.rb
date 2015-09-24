class Fixnum
  define_method(:ping_pong) do
    number = self.abs
    num_array = []
    # these variables are to make it allow future developers to easily change
    # the targeted numbers and the replacement string output on demand.
    a = "ping"
    b = "pong"
    ab = "ping-pong"
    num_a = 3
    num_b = 5

    0.upto(number) do |i|
      if i == 0
        num_array.push(0)
      elsif (i % num_a == 0) and (i % num_b == 0)
        num_array.push(ab)
      elsif (i % num_a == 0)
        num_array.push(a)
      elsif (i % num_b == 0)
        num_array.push(b)
      else
        num_array.push(i)
      end
    end
    num_array
  end
end
