class User < ActiveRecord::Base
  has_many :enrollments,
    foreign_key: :student_id,
    primary_key: :id,
    class_name: :Enrollment

  has_many :enrolled_courses,
    through: :enrollments,
    source: :course

  has_many :courses_taught,
    primary_key: :id,
    class_name: :Course,
    foreign_key: :instructor_id
end
