require 'spec_helper'

feature 'Contact creation' do
  scenario 'Allow access to contact page' do
    visit '/contacts'
    expect(page).to have_content 'Контакты'
  end
end
