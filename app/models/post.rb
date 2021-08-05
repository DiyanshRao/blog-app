# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :user
end
