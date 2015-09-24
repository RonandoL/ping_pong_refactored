require('rspec')
require('ping_pong')

describe('Fixnum#ping_pong') do
  it('will count up to a number and display an array of numbers replacing "ping" for 3') do
    expect(4.ping_pong()).to(eq([1, 2, "ping", 4]))
  end

  it('will count up to an entered number and replace 3 and 5 with ping and pong and its multiple') do
    expect(16.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong", 16]))
  end

  it('will count up to an entered number and replace 3 and 5 with ping and pong and its multiple') do
    expect(-16.ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong", 16]))
  end
end
