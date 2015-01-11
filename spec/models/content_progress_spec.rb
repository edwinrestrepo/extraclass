require 'spec_helper'

describe ContentProgress do
  it "is invalid if grade is not present" do
    content_progress = FactoryGirl.build(:content_progress, grade: nil)
    expect(content_progress).to have(2).errors_on(:grade)
  end

  it "is invalid if grade is not a number" do
    content_progress = FactoryGirl.build(:content_progress, grade: "Hello")
    expect(content_progress).to have(1).errors_on(:grade)
  end
end
