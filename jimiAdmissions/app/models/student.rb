class Student < ActiveRecord::Base
  validates :student_name, presence: true,
            length: {minimum: 1 }
  validates :obtain_courses, presence: true,
            length: { minimum: 2 }
  validates :contact_information, presence: true,
            length: { minimum: 1}

end
