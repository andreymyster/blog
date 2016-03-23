require 'spec_helper'

feature 'Article creation' do
  before(:all) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content 'Новый пост'
  end

  scenario 'allows user create new article' do
    visit new_article_path

    fill_in :article_title, :with => 'New'
    fill_in :article_text, :with => 'Text123'

    click_button 'Сохранить'

    expect(page).to have_content 'Text123'
  end
end
