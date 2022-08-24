require_relative 'lib/cohort_repository.rb'
require_relative 'lib/database_connection.rb'

DatabaseConnection.connect('student_directory_2')

repo = CohortRepository.new

cohort = repo.find_with_students('1')

cohort.students.each do |student|
    puts "#{student.id} - #{student.name}"
end