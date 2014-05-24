class Page

  attr_accessor :request, :body

  def initialize(body)
    @body = body
  end

  def links
    collection = @body.scan(/(<a.*?<\/a>)/)
    @links ||= collection.map{|x| Link.new(x.first) }
  end

  def h1s
    @body.scan(/(<h1.*?>.*?<\/h1>)/)
  end

  def paragraphs
    @body.scan(/(<p.*?>.*?<\/p>)/)
  end

  def forms
    forms = []
    collection = @body.scan(/(<form.*?form>)/)
    collection.each{|x| form = Form.new(x.first); form.request = request; forms << form }
    @forms ||= forms
  end

  def get_element_by_id(id)
    match = @body.scan(/.*(<.{0,100}id\s{0,1}=\s{0,1}[\'|\"]#{id}[\'|\"].*?\/.*?>)/).first
    match.first if match
  end

end
