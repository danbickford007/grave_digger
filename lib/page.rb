class Page

  attr_accessor :request
  attr_accessor :avail_forms

  def initialize(body)
    @body = body
  end

  def links
    collection = @body.scan(/(<a.*?<\/a>)/)
    @links ||= collection.map{|x| Link.new(x) }
  end

  def h1s
    @body.scan(/(<h1>.*?<\/h1>)/)
  end

  def paragraphs
    @body.scan(/(<p>.*?<\/p>)/)
  end

  def forms
    collection = @body.scan(/(<form.*?form>)/)
    @forms ||= collection.each{|x| Form.new(x).request = request }
  end

end
