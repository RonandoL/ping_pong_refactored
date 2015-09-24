class Fixnum
  define_method(:ping_pong) do
    number = self
    num_array = []
    ping = "ping"
    pong = "pong"

    1.upto(number) do |i|
      if (i % 3 == 0)
        num_array.push(ping)
      else
        num_array.push(i)
      end
    end
    num_array
  end
end
