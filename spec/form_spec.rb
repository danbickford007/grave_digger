require 'spec_helper'

describe Form do

  let(:request) { Request.new('http://google.com') }
  let(:form) { Form.new("<form action='/test'><input name='username' type='text' value='' /><button type='submit' /></form>") }
  before(:each) do 
    request.url = "http://google.com"
    form.request = request
  end

  describe '#submit' do

    it 'returns page' do
      expect(form.submit({username: 'test'}).class).to eq(Page)
    end

  end

  describe '#get_action_url' do

    context 'action exists' do

      it 'returns url' do
        expect(form.get_action_url).to eq('/test')
      end

    end

  end

  describe '#is_by_name?' do

    context 'form is present' do
      let(:html) { "<form name = 'test' action='/test'><input name='username' type='text' value='' /><button type='submit' /></form>" }
      let(:form) { Form.new(html) }
      it 'returns the form html matching given name' do
        expect(form.is_by_name?('test')).to be_true 
      end

    end

    context 'form is not found' do

      it 'returns false' do
        expect(form.is_by_name?('test')).to be_false 
      end

    end

  end

end
