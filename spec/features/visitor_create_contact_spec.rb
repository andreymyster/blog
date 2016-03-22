require 'spec_helper'

feature 'Contact creation' do
  scenario 'Allow access to contact page' do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario 'Allows a guest to create contact' do
    visit '/contacts'

    fill_in :contact_email, :with => 'user@test.com'
    fill_in :contact_message, :with => 'Message'

    click_button 'Отправить сообщение'

    expect(page).to have_content 'Спасибо'
  end
end
