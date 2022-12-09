class Quote < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true, length: { minimum: 20 }

  VALID_CATEGORIES = ['Motivational', 'Friendship', 'Love', 'Success', 'Happiness', 'Life']
   
  validates :category, inclusion: { in: VALID_CATEGORIES }

  def self.search(search)
    if search and search != ''
      self.where(category: search)
    else
      self.all
    end
  end
end
