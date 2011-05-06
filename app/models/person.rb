# == Schema Information
# Schema version: 20110427091903
#
# Table name: people
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  birth_date :date
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :date_of_birth
  
  #validates :name, :presence => true
end
