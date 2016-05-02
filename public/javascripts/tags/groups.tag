<groups>
  <ul>
    <li each={groups}>{master_speaker.name}</li>
  </ul>

  <div each={groups} id="{master_speaker.name.toLowerCase()}">
    <div class="now-playing">
      <div class="album-art">
        <img src="{now_playing.album_art}">
      </div>
      <div class="metadata">
        <p class="title">
          <label>Song</label><br>
          <span>{now_playing.title}</span>
        </p>
        <p class="artist">
          <label>Artist</label><br>
          <span>{now_playing.artist}</span>
        </p>
        <p class="album">
          <label>Album</label><br>
          <span>{now_playing.album}</span>
        </p>
      </div>
    </div>
  </div>

  <script>
    updateComponent = function(groups) {
      this.groups = store.getState().groups
      this.update()
    }.bind(this)

    store.subscribe(updateComponent)
  </script>
</groups>
