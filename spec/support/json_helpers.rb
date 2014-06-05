def response_data
  response_json['data']
end

def response_status
  response_json['status']
end

def response_json
  JSON.parse(response.body)
end
