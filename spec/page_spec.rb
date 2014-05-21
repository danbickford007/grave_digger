require 'spec_helper'
describe Page do

  let(:link) { Link.new("<a href='test'>test</a>") }
  let(:link2) { Link.new("<a onclick='click'>clicker</a>") }
  let(:page) { Page.new("<a href='test'>test</a>here is another test<a onclick='click'>clicker</a>") }

  describe '#links' do
    
    it 'return an array of all anchors' do
      expect(page.links).to eq([page.links.first, page.links.last])
    end

  end

end
