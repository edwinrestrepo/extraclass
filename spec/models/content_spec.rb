require 'spec_helper'

describe Content do

  context "valid title" do

    it "is invalid without a title" do
      content = FactoryGirl.build(:content, title: nil)
      expect(content).to have(2).errors_on(:title)
    end

    it "is invalid with a title too short" do
      content = FactoryGirl.build(:content, title: "Hola")
      expect(content).to have(1).errors_on(:title)
    end

    it "is invalid if duplicate" do
      content1 = FactoryGirl.create(:content)
      content2 = FactoryGirl.build(:content, title: content1.title)
      expect(content2).to have(1).errors_on(:title)
    end

  end

  context "valid content" do

    it "is invalid without a content" do
      content = FactoryGirl.build(:content, content: nil)
      expect(content).to have(2).errors_on(:content)
    end

    it "is invalid with a title too short" do
      content = FactoryGirl.build(:content, content: "Hola")
      expect(content).to have(1).errors_on(:content)
    end

  end

end
