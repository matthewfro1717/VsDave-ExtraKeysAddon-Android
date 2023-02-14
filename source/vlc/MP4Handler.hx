package vlc;

#if VIDEOS_ALLOWED
import MP4Handler;
#end

class VideoState extends MusicBeatState
{
  override function create():Void
  {
    #if VIDEOS_ALLOWED
    var video:MP4Handler = new MP4Handler();
    video.playVideo(Paths.video('yourVideoName'));
    video.finishCallback = function()
    {
      MusicBeatState.switchState(new TitleState());
    };
    #else
    MusicBeatState.switchState(new TitleState());
    #end
  }

  override function update(elapsed:Float):Void
  {
    super.update(elapsed);
  }
}
