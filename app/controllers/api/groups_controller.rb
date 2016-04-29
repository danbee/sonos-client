class Api::GroupsController < ApplicationController
  def index
    @groups = SONOS_SYSTEM.groups
  end

  def stubbed_groups
    [
      {
        "master_speaker" => {
          "name" => "Kitchen",
          "ip" => "192.168.0.109",
          "model_number" => "S5",
          "now_playing" => nil,
        },
        "slave_speakers" => []
      },
      {
        "master_speaker" => {
          "name" => "Bedroom",
          "ip" => "192.168.0.113",
          "model_number" => "ZP90",
          "now_playing" => {
            "title" => "Thrust",
            "artist" => "Virtual Boy",
            "album" => "Symphony No. None - EP",
            "info" => "",
            "queue_position" => "1",
            "track_duration" => "0 =>05 =>23",
            "current_position" => "0 =>00 =>00",
            "uri" => "x-sonos-http =>song%3a415425016.mp4?sid=204&flags=8224&sn=7",
            "album_art" => "/assets/test-cover.png"
          }
        },
        "slave_speakers" => []
      }
    ]
  end
end
