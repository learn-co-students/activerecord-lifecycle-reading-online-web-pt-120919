# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  post_status :boolean
#  author_id   :integer
#
class Post < ActiveRecord::Base

  belongs_to :author
  validate :is_title_case 
  
  before_save :make_title_case

  private

  def is_title_case
    if title.split.any?{ |w| w[0].upcase != w[0] }
      errors.add(:title, "Title must be in title case")
    end
  end

  def make_title_case
    self.title = self.title.titlecase
  end

  def email_author_about_post
  end
end
