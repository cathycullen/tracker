class Participant < ActiveRecord::Base
  has_many :enrollments
  has_many :registries, :through => :enrollments

  validates_presence_of :name, :gender, :dob

  belongs_to :coordinator

  def self.get_ids
    Participant.pluck(:id)
  end

  def self.dob_by_year
    Participant.group("DATE_TRUNC('year', dob)").count.each.map { |key, count| [key.year, count] }.to_h
  end

  def self.query_by_coordinator_and_gender
    sql = "SELECT coordinators.name,  participants.gender, COUNT(*) FROM participants, coordinators where coordinators.id = participants.coordinator_id  GROUP BY coordinators.name, gender ORDER BY coordinators.name"
    result = ActiveRecord::Base.connection.execute(sql)
    result.values
  end

  def joiner
    Coordinator.joins(:participants).first
  end
end
