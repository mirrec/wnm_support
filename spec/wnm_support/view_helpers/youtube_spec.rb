require "spec_helper"

class MyHelper
  include WnmSupport::ViewHelpers::Youtube
end

describe WnmSupport::ViewHelpers::Youtube do
  let(:helper) { MyHelper.new }

  describe "youtube_prepare_url" do
    it "should change watch?v= to v/" do
      url = "youtube.com/watch?v=lala"
      helper.youtube_prepare_url(url).should include("youtube.com/v/lala")
    end

    it "should strip out useless params" do
      url = "youtube.com/watch?v=lala&feature=hocico"
      helper.youtube_prepare_url(url).should include("youtube.com")
      helper.youtube_prepare_url(url).should_not include("&feature=")
      helper.youtube_prepare_url(url).should_not include("hocico")
    end

    it "should add special params " do
      url = "youtube.com/watch?v=lala"
      helper.youtube_prepare_url(url).should include("?fs=1&amp;hl=sk_SK")
    end
  end

  describe "youtube_video" do
    it "create flash object" do
      url = "youtube.com/watch?v=lala"
      video = helper.youtube_video(url, 100, 200)
      video.should include("<object")
      video.should include("youtube.com")
    end

    it "should include given width" do
      video = helper.youtube_video("", 100, 200)
      video.should include('width="100"')
    end

    it "should include given height" do
      video = helper.youtube_video("", 100, 200)
      video.should include('height="200"')
    end
  end


end
