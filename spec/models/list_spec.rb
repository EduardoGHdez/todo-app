require 'rails_helper'

RSpec.describe List, type: :model do
    it "has a valid factory" do
        @user_attr = FactoryBot.attributes_for(:user)
        @user = User.create!(@user_attr)
        FactoryBot.create(:list, user: @user).should be_valid
    end
    it "is invalid without a user" do
        expect {
            FactoryBot.create(:list)
        }.to raise_error( ActiveRecord::RecordInvalid,'Validation failed: User must exist')
    end
    it "returns a list that would contain tasks"
    it "has many tasks"
end
