require "net/http"
require "uri"

class Request

  def initialize(url)
    @uri = URI.parse(url)
  end

  def find
    response = Net::HTTP.get_response(@uri)
    Net::HTTP.get_print(@uri)
    http = Net::HTTP.new(@uri.host, @uri.port)
    Page.new(http.request(Net::HTTP::Get.new(@uri.request_uri)).body)
  end

end
