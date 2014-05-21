require 'spec_helper'
describe Request do

  let(:request) { Request.new('http://google.com') }

  describe 'find' do
    
    it 'should return response string' do
      expect(request.find).not_to be_nil
    end

  end

end
