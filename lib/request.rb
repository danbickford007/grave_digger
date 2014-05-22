require "net/http"
require "uri"

class Request

  attr_accessor :url

  def initialize(url)
    @url = url
    @uri = URI.parse(url)
  end

  def page
    response = Net::HTTP.get_response(@uri)
    Net::HTTP.get_print(@uri)
    http = Net::HTTP.new(@uri.host, @uri.port)
    page = Page.new(http.request(Net::HTTP::Get.new(@uri.request_uri)).body)
    page.request = self
    page
  end

  def pages
    @pages ||= []
  end

end
