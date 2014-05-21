class Link

  def initialize(html)
    @html = html
  end
  
  def click
    Request.new(@html.match(/href="(.*)"/))
  end

end
