class Form

  attr_accessor :request

  def initialize(html)
    @html = html
  end

  def is_by_name? name
    @html.match(/name\s{0,1}=\s{0,1}(\"|\')#{name}(\"|\')/)
  end

  def get_action_url
    url = @html.scan(/action\s{0,1}=\s{0,1}[\"|\'](.*?)[\"|\']/).first
    url.first ? url.first : false 
  end

  def submit params={}
    begin
      uri = URI(request.url + get_action_url)
      res = Net::HTTP.post_form(uri, params)
      page = Page.new(res.body)
      page.request = request
      page
    rescue => e
      puts "Error submiting form: #{e}"
    end
  end

end
