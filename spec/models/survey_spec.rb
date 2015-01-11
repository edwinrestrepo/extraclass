require 'spec_helper'

describe Survey do
  it "is invalid without a title" do
    survey = FactoryGirl.build(:survey, title: nil)
    expect(survey).to have(1).errors_on(:title)
  end
end
