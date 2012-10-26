class Post < ActiveRecord::Base
  attr_accessible :entry, :title, :url_title
  validates :entry, :title, presence: true
  validates :title, uniqueness: true
  has_many :comments, dependent: :destroy

  def title_to_url
  		url_title = self.title.downcase.gsub(/\W/,'-')
		url_title = url_title.gsub(/-{2,}|\A\-|\-\Z/,'')
	end
end
