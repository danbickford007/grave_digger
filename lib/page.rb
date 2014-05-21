class Page

  def initialize(body)
    @body = body
  end

  def links
    collection = @body.scan(/(<a.*?<\/a>)/)
    @links ||= collection.map{|x| Link.new(x) }
  end


end
