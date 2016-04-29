json.array! @groups do |group|
  json.now_playing group.master_speaker.now_playing

  json.master_speaker do
    json.name group.master_speaker.name
    json.ip group.master_speaker.ip
    json.model_number group.master_speaker.model_number
  end

  json.slave_speakers group.slave_speakers do |speaker|
    json.name speaker.name
    json.ip speaker.ip
    json.model_number speaker.model_number
  end
end
