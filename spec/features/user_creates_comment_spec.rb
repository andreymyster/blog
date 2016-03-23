require 'spec_helper'

feature 'Comment creation' do

  scenario 'allows user to create new comment' do
    sign_up
    create_new_article
    fill_in :comment_body, :with => 'Text456'
    click_button 'Сохранить'
    expect(page).to have_content 'Text456'
  end

end
