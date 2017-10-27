require 'rails_helper'

RSpec.describe Question, type: :model do
    let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: false ) }
  
    describe "attributes" do
        it "has title and body attributes" do
            expect(question).to have_attributes(title: "New Question Title", body: "New Question Body")
        end
        
        it "has a boolean value for resolved" do
            expect(question.resolved).to be(true).or be(false)
        end    
    end
end
