require 'spec_helper'

feature 'Article creation' do
  before(:each) do
    sign_up
  end

  scenario 'allows user to visit new article page' do
    visit new_article_path
    expect(page).to have_content 'Новый пост'
  end

  scenario 'allows user create new article' do
    create_new_article
    expect(page).to have_content 'Text123'
  end
end
