require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Ping Pong Test path', {:type=>:feature}) do
  it('will return count up to entered number, replacing multiples of 3 with ping and 5 with pong') do
    visit('/')
    fill_in('number', :with => 16)
    click_button('Click!')
    expect(page).to have_content([0, 1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong", 16])
  end
end
