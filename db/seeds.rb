# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coordinator.delete_all
Participant.delete_all
Registry.delete_all
RegistryCoordinator.delete_all
Enrollment.delete_all

coordinator1 = Coordinator.create!(:email => 'cathy@gmail.com',
                    :name => 'Cathy Cullen',
                    :phone => '773-275-5566')
coordinator2 = Coordinator.create!(:email => 'makena@gmail.com',
                    :name => 'Makena Gsd',
                    :phone => '773-275-1234')
coordinator3 = Coordinator.create!(:email => 'coordinator@gmail.com',
                    :name => 'Bob Coordinator',
                    :phone => '773-275-5647')

registry1 = Registry.create!(:name => 'Reg1',
                              :location => 'IL',
                              :state => 'open')
registry2 = Registry.create!(:name => 'Reg2',
                            :location => 'MA',
                            :state => 'open')
registry3 = Registry.create!(:name => 'Reg3',
                             :location => 'CA',
                             :state => 'closed')
registry4 = Registry.create!(:name => 'Reg4',
                            :location => 'WA',
                            :state => 'closed')

participant1 = Participant.create!(:name => 'Ruby Red',
                    :gender => 'female',
                    :dob => '1965-06-01',
                    :phone => '312-123-4567',
                    :email => 'ruby@gmail.com',
                    :coordinator_id => 1
                    )
participant2 = Participant.create!(:name => 'Nancy Blue',
                    :gender => 'female',
                    :dob => '1965-08-11',
                    :phone => '312-123-4567',
                    :email => 'nancy@gmail.com',
                    :coordinator_id => 1
                    )
participant3 = Participant.create!(:name => 'Jen Black',
                    :gender => 'female',
                    :dob => '1975-04-01',
                    :phone => '312-123-4567',
                    :email => 'jen@gmail.com',
                    :coordinator_id => 2
                    )
participant4 = Participant.create!(:name => 'Cece Green',
                    :gender => 'female',
                    :dob => '1975-08-11',
                    :phone => '312-123-4567',
                    :email => 'cece@gmail.com',
                    :coordinator_id => 2
                    )
participant5 = Participant.create!(:name => 'Jay Green',
                    :gender => 'male',
                    :dob => '1985-06-01',
                    :phone => '312-123-4567',
                    :email => 'jay@gmail.com',
                    :coordinator_id => 1
                    )

participant6 = Participant.create!(:name => 'Rich Blue',
                    :gender => 'male',
                    :dob => '1985-02-11',
                    :phone => '312-123-4567',
                    :email => 'rich@gmail.com',
                    :coordinator_id => 3
                    )


RegistryCoordinator.create!(:coordinator => coordinator1,
                            :registry => registry1)
RegistryCoordinator.create!(:coordinator => coordinator1,
                              :registry => registry2)
RegistryCoordinator.create!(:coordinator => coordinator2,
                              :registry => registry1)
RegistryCoordinator.create!(:coordinator => coordinator3,
                              :registry => registry1)
RegistryCoordinator.create!(:coordinator => coordinator3,
                              :registry => registry2)
RegistryCoordinator.create!(:coordinator => coordinator2,
                              :registry => registry2)


Enrollment.create!(:participant => participant1,
                   :registry => registry1,
                   :enrollment_date => '2016-06-01',
                   :method_of_contact => 'email',
                   :remarks => 'hello registry2',
                   :coordinator => coordinator1
                   )
Enrollment.create!(:participant => participant2,
                   :registry => registry1,
                   :enrollment_date => '2016-06-01',
                   :method_of_contact => 'email',
                   :remarks => 'hello registry1',
                   :coordinator => coordinator1
                   )
Enrollment.create!(:participant => participant2,
                   :registry => registry2,
                   :enrollment_date => '2016-06-01',
                   :method_of_contact => 'email',
                   :remarks => 'hello registry2',
                   :coordinator => coordinator2
                   )
Enrollment.create!(:participant => participant2,
                    :registry => registry3,
                    :enrollment_date => '2016-06-01',
                    :method_of_contact => 'email',
                    :remarks => 'hello registry3',
                    :coordinator => coordinator2
                    )
Enrollment.create!(:participant => participant3,
                    :registry => registry1,
                    :enrollment_date => '2016-06-01',
                    :method_of_contact => 'email',
                    :remarks => 'hello registry1',
                    :coordinator => coordinator2
                    )
Enrollment.create!(:participant => participant2,
                    :registry => registry4,
                    :enrollment_date => '2016-06-01',
                    :method_of_contact => 'email',
                    :remarks => 'hello registry4',
                    :coordinator => coordinator3
                    )
