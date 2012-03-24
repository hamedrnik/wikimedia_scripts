#!/usr/bin/ruby

require 'net/http'
require 'rubygems'
require 'media_wiki'
require './language_name.rb'

headers =  {
            'User-agent'=>'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)'
        }
url = URI.parse('http://s23.org/wikistats/wiktionaries_wiki')
req = Net::HTTP::Get.new(url.path,headers)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

statistics = res.body

statistics.gsub!(/left/,'right')
statistics.gsub!(/(<pre>|<\/pre>)/,'')
statistics.gsub!(/Grand Total/,'جمع همه')
statistics.gsub!(/! Articles/,'! واژه‌ها')

statistics.gsub!(/! &#8470;/,'! رتبه')
statistics.gsub!(/! Language \(local\)/,'! زبان (محلی)')
statistics.gsub!(/! Language/,'! زبان')
statistics.gsub!(/! Wiki/,'! ویکی')
statistics.gsub!(/! Good/,'! واژه‌ها')
statistics.gsub!(/! Total/,'! مجموع')
statistics.gsub!(/! Edits/,'! ویرایش‌ها')
statistics.gsub!(/! Admins/,'! مدیرها')
statistics.gsub!(/! Users/,'! کاربرها')
statistics.gsub!(/! Active Users/,'! کاربرهای فعال')
statistics.gsub!(/! Images/,'! تصویرها')
statistics.gsub!(/! Depth/,'! ژرفا')
statistics.gsub!(/! Updated/,'! به روز شده')
statistics.gsub!(/(\d) (\d)/,'\1,\2')

#convert english name to persian and link to fa wikipedia
gsub_english_name_to_persian(statistics)

#puts statistics
config = MediaWiki::Config.new ARGV

mw = MediaWiki::Gateway.new(config.url)
mw.login(config.user, config.pw)
mw.create 'ویکی‌واژه/جدول', statistics, :summary => "bot: update stats", :overwrite => true
