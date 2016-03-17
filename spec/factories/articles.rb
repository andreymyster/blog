FactoryGirl.define do
  factory :article do
    title 'Article title'
    text 'Article text'

    # создаем фабрику article_with_comments
    # для создания статьи с несколькими комментариями
    factory :article_with_comments do
      # после создания article
      after :create do |article, evaluator|
        # создаем список из трех комментариев
        create_list :comment, 3, article: article
      end
    end

  end
end
