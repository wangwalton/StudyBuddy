class Post < ApplicationRecord
    has_many :comments
    belongs_to :course
    belongs_to :user
    has_rich_text :description

    validates :title, :presence => true, :uniqueness => true, :length => { :in => 3..30 }
    validates :description, :presence => true
    # validates :category, :presence => true
end