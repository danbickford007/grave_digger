class Link

  def initialize(html)
    @html = html
  end

  def url
    _url = @html.scan(/href\s{0,1}=\s{0,1}[\"|\'](.*)[\"|\']/).first
    @url = _url ? _url.first : false
  end
  
  def click
    Request.new(url)
  end

end
