def create_new_article
  visit new_article_path

  fill_in :article_title, :with => 'New'
  fill_in :article_text, :with => 'Text123'

  click_button 'Сохранить'
end
