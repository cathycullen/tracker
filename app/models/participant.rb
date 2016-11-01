class Participant < ActiveRecord::Base
  belongs_to :coordinator

  has_many :enrollments
  has_many :registries, :through => :enrollments

  validates_presence_of :name, :gender, :dob, :enrollment_date, :method_of_contact, :remarks
end
