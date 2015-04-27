require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('result path', {:type => :feature}) do
  it('Take three fields to create a triangle object using the triangle class, display the type of triangle on a results page') do
    visit('/')
    fill_in('side_1', :with => 2)
    fill_in('side_2', :with => 3)
    fill_in('side_3', :with => 4)
    click_button('submit_triangle')
    expect(page).to have_content('Scalene')
  end
end
