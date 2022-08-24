require_relative './cohort.rb'
require_relative './student.rb'
require_relative './database_connection.rb'


class CohortRepository

    def find_with_students(id)
        sql = 'SELECT cohorts.id,
                    cohorts.name AS cohort_name,
                    cohorts.starting_date,
                    students.id AS student_id,
                    students.name AS student_name
                FROM cohorts
                JOIN students ON students.cohort_id = cohorts.id
                WHERE cohorts.id = $1;'

        params = [id]
        result = DatabaseConnection.exec_params(sql, params)
        new_cohort = Cohort.new
        new_cohort.id = result.first['cohort_id']
        new_cohort.name = result.first['cohort_name']
        new_cohort.starting_date = result.first['starting_date']

        result.each do |record|
            student = Student.new
            student.id = record['student_id']
            student.name = record['student_name']

            new_cohort.students << student
        end

        return new_cohort
    end

end