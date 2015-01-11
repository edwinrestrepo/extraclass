require 'spec_helper'

describe Student do
  it "is invalid without an email" do
    student = FactoryGirl.build(:student, email: nil)
    expect(student).to have(1).errors_on(:email)
  end

  it "is invalid without a first name" do
    student = FactoryGirl.build(:student, first_name: nil)
    expect(student).to have(1).errors_on(:first_name)
  end

  it "is invalid without a last name" do
    student = FactoryGirl.build(:student, last_name: nil)
    expect(student).to have(1).errors_on(:last_name)
  end

  it "is invalid if duplicate" do
    student1 = FactoryGirl.create(:student)
    student2 = FactoryGirl.build(:student, email: student1.email)
    expect(student2).to have(1).errors_on(:email)
  end
end
