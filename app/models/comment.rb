class Comment < ApplicationRecord
  belongs_to :prospect
  has_rich_text :body
end
