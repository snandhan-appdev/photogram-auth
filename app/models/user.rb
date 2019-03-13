# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # Associations
    has_many :photos, :class_name => "Photo", :foreign_key => "user_id"
    has_many :comments, :class_name => "Comment", :foreign_key => "user_id"
    has_many :likes, :class_name => "Like", :foreign_key => "user_id"
    has_many :liked_photos, :through => :likes, :source => :photo


    
  
  # Validations
  validates :username, :presence => true
  validates :username, :uniqueness => true
  
  
end

# Validation Examples
    # validates :director_id, :title, presence: true
    # validates :year, numericality: {
    #     only_integer: true,
    #     greater_than_or_equal_to: 1870,
    #     less_than_or_equal_to: 2050
    # }
    # validates :title, uniqueness: {
    #     scope: :year,
    #     message: "should be unique with respect to year"
    # }
    # validates :duration, numericality: {
    #     only_integer: true,
    #     greater_than_or_equal_to: 0,
    #     less_than_or_equal_to: 2764800,
    #     allow_blank: true
    # }
    
    
  # Asssociations Examples
  # has_many :bookmarks, :class_name => "Bookmark", :foreign_key => "user_id"
  # Long form, achieves same as below
  
  # has_many :bookmarks
  
  # has_many :movies, :through => :bookmarks, :source => :movie
  # Long form, achieves same as short form below
  
  # has_many :movies, :through => :bookmarks
    
    
    