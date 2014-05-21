require 'spec_helper'

describe Link do

  let(:link) { Link.new("<a href='http://google.com'>google</a>") }
  
  describe '#click' do

    it 'creates new instance of request' do
      Request.should_receive(:new)
      link.click
    end

  end


end
