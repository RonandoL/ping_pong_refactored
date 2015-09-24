require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it('will count up to a number and display an array of numbers replacing "ping" for 3') do
    expect(4.ping_pong()).to(eq([1, 2, "ping", 4]))
  end
end
