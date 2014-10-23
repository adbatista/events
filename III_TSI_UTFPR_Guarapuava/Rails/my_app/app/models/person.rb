class Person < ActiveRecord::Base
  validates_presence_of :name, message: 'não pode ficar em branco'
  
  validates_uniqueness_of :email

  has_many :books
end
