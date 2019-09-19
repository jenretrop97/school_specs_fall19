require 'rails_helper'

RSpec.describe Student, type: :model do
  describe 'attributes' do
    it 'has a name' do
      name = 'Henry'
      student = Student.create(name: name)
      expect(student.name).to eq(name)
    end

    it 'has a student_number' do
      student_number = 12345
      student = Student.create(student_number: student_number)
      expect(student.student_number).to eq(student_number)
    end

    it 'has a gpa' do
      gpa = 3.9
      student = Student.create(gpa: gpa)
      expect(student.gpa).to eq(gpa)
    end
  end
end