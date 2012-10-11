module WnmSupport
  module ViewHelpers
    module Youtube
      def youtube_prepare_url(url)
        url = url.to_s.gsub(/watch\?v=/, "v/").gsub(/&feature=.*/, "")
        url << "?fs=1&amp;hl=sk_SK"
        url
      end

      def youtube_video(url, width, height)
        url = url.to_s
        width = width.to_i.to_s
        height = height.to_i.to_s
        '<object width="'+width+'" height="'+height+'"><param name="movie" value="'+url+'"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="'+url+'" type="application/x-shockwave-flash" width="'+width+'" height="'+height+'" allowscriptaccess="always" allowfullscreen="true"></embed></object>'.html_safe
      end
    end
  end
end