require 'spec_helper'

describe SurveyResponse do
  it "is invalid without a timestamp" do
    survey_response = FactoryGirl.build(:survey_response, timestamp: nil)
    expect(survey_response).to have(1).errors_on(:timestamp)
  end
end
