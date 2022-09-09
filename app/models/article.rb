class Article < ActiveRecord::Base
  has_rich_text :content
  validates :title, presence: true

  def increase_visit
    visit_counter = 0
    visit_counter += 1
    save!
  end
end
