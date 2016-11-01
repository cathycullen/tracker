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

Coordinator.create!(:email => 'cathy@gmail.com',
                    :name => 'Cathy Cullen',
                    :phone => '773-275-5566')
Coordinator.create!(:email => 'makena@gmail.com',
                    :name => 'Makena Gsd',
                    :phone => '773-275-1234')
Coordinator.create!(:email => 'coordinator@gmail.com',
                    :name => 'Bob Coordinator',
                    :phone => '773-275-5647')

Participant.create!(:name => 'Ruby Red',
                    :gender => 'f',
                    :dob => '1965-06-01',
                    :enrollment_date => '2016-06-01',
                    :phone => '312-123-4567',
                    :email => 'ruby@gmail.com',
                    :method_of_contact => 'p',
                    :remarks => 'hello ruby'
                    )
Participant.create!(:name => 'Nancy Blue',
                    :gender => 'f',
                    :dob => '1965-08-11',
                    :enrollment_date => '2016-07-01',
                    :phone => '312-123-4567',
                    :email => 'nancy@gmail.com',
                    :method_of_contact => 'p',
                    :remarks => 'hello nancy'
                    )
Participant.create!(:name => 'Jen Black',
                    :gender => 'f',
                    :dob => '1975-04-01',
                    :enrollment_date => '2016-08-01',
                    :phone => '312-123-4567',
                    :email => 'jen@gmail.com',
                    :method_of_contact => 'p',
                    :remarks => 'hello world'
                    )
Participant.create!(:name => 'Cece Green',
                    :gender => 'f',
                    :dob => '1975-08-11',
                    :enrollment_date => '2016-06-01',
                    :phone => '312-123-4567',
                    :email => 'cece@gmail.com',
                    :method_of_contact => 'e',
                    :remarks => 'hello cece'
                    )
Participant.create!(:name => 'Jay Green',
                    :gender => 'm',
                    :dob => '1985-06-01',
                    :enrollment_date => '2016-06-01',
                    :phone => '312-123-4567',
                    :email => 'jay@gmail.com',
                    :method_of_contact => 'e',
                    :remarks => 'hello jay'
                    )

Participant.create!(:name => 'Rich Blue',
                    :gender => 'm',
                    :dob => '1985-02-11',
                    :enrollment_date => '2016-06-01',
                    :phone => '312-123-4567',
                    :email => 'rich@gmail.com',
                    :method_of_contact => 'p',
                    :remarks => 'hello rich'
                    )

Registry.create!(:name => 'Reg1',
                 :location => 'IL',
                 :state => 'open')
Registry.create!(:name => 'Reg2',
                :location => 'MA',
                :state => 'open')
Registry.create!(:name => 'Reg3',
                 :location => 'CA',
                 :state => 'closed')
Registry.create!(:name => 'Reg4',
                :location => 'WA',
                :state => 'closed')
