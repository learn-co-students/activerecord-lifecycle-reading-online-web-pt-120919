# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  genre      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ActiveRecord::Base
  has_many :posts
end
