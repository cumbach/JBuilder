json.array! @parties do |party|
  json.partial! 'api/parties/party', party: party

  json.guests party.guests do |guest|
    json.name guest.name
  end
end
