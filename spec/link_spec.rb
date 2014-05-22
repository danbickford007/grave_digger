require 'spec_helper'

describe Link do

  let(:link) { Link.new("<a href='http://google.com'>google</a>") }
  
  describe '#click' do

    it 'creates new instance of request' do
      Request.should_receive(:new)
      link.click
    end

  end

  describe '#url' do

    it 'returns url' do
      expect(link.url).to eq('http://google.com')
    end

  end


end
