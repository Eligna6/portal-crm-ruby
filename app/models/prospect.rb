class Prospect < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, presence: true
    validates :status, presence: true
    validates :entered_by, presence: true
end
