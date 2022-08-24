require 'cohort_repository'


RSpec.describe CohortRepository do
    it 'creates cohort object with nested student objects' do

        repository = CohortRepository.new
        cohort = repository.find_with_students(1)

        expect(cohort.name).to eq('May')
        expect(cohort.students.length).to eq(2)
    end
end