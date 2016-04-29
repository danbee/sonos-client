json.array! @groups do |group|
  json.now_playing do
    json.title group.master_speaker.now_playing[:title]
    json.artist group.master_speaker.now_playing[:artist]
    json.album group.master_speaker.now_playing[:album]
    json.info group.master_speaker.now_playing[:info]
    json.queue_position group.master_speaker.now_playing[:queue_position]
    json.track_duration group.master_speaker.now_playing[:track_duration]
    json.uri group.master_speaker.now_playing[:uri]
    json.album_art(
      Dragonfly.app.fetch_url(
        group.master_speaker.now_playing[:album_art]
      ).thumb("400x400").url
    )
  end

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
