class Post < ActiveRecord::Base
  attr_accessible :entry, :title, :url_title
  validates :entry, :title, presence: true
  validates :title, uniqueness: true

  def title_to_url
		self.title.downcase.gsub(/\s/,'-')
	end
end
