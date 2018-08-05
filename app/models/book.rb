class Book < ApplicationRecord
    validates :title, presence: true
    validates :author, presence: true
    validates :publisher, presence: true
    validates :genre, presence: true
end
