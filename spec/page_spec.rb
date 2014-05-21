require 'spec_helper'
describe Page do

  let(:link) { Link.new("<a href='test'>test</a>") }
  let(:link2) { Link.new("<a onclick='click'>clicker</a>") }
  let(:page) { Page.new("<a href='test'>test</a><p>para here</p><h1>here is another test</h1><form action='/test'><input type='text' /></form><a onclick='click'>clicker</a>") }
  let(:form) { Form.new("<form action='/test'><input type='text' /></form>") }
  describe '#links' do
    
    it 'return an array of all anchors' do
      expect(page.links).to eq([page.links.first, page.links.last])
    end

  end

  describe '#h1s' do
    
    it 'returns array of h1 tags' do

      expect(page.h1s).to eq([["<h1>here is another test</h1>"]])

    end

  end

  describe '#paragraphs' do

    it 'returns array of paragraphs' do

      expect(page.paragraphs).to eq([["<p>para here</p>"]])

    end

  end

  describe '#forms' do

    it 'should return array of forms' do
        
      expect(page.forms).to eq([page.forms.first])
        
    end

  end

end
