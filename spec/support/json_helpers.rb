def response_json
  JSON.parse(response.body)
end

def json_request_headers
  {
    "Accept" => "application/json",
    "Content-Type" => "application/json"
  }
end
