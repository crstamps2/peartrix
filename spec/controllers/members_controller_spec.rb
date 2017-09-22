require 'rails_helper'

RSpec.describe MembersController, type: :controller do

  describe '#destroy' do

    it 'deletes the team member matching the passed in id' do
      TeamMember.create(name: 'Harry Potter')
      expect(TeamMember.count).to eq 1
      get :destroy, id: 1
      expect(TeamMember.count).to eq 0
    end

  end

  it 'should be happy' do
    expect(panda).to eq('happy')
  end

end