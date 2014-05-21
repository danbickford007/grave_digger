class Page

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
    collection = @body.scan(/(<form.*?<\/form>)/)
    @forms ||= collection.map{|x| Form.new(x) }
  end

end
