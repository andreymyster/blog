require 'spec_helper'

feature 'Article edit' do

  before(:each) do
    sign_up
    create_new_article
    click_link 'Редактировать'
  end

  scenario 'allows user to visit edit article page' do
    expect(page).to have_content 'Редактировать пост'
  end

  scenario 'allows user edit article page' do
    fill_in :article_text, :with => 'Text1234'
    click_button 'Сохранить'
    expect(page).to have_content 'Text1234'
  end

end
