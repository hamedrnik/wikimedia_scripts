#!/usr/bin/ruby

require 'net/http'
require 'rubygems'
require 'media_wiki'
require './language_name.rb'

headers =  {
            'User-agent'=>'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)'
        }
url = URI.parse('http://s23.org/wikistats/wikipedias_wiki')
req = Net::HTTP::Get.new(url.path,headers)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}

statistics = res.body

statistics.gsub!(/(<pre>|<\/pre>)/,'')
statistics.gsub!(/1 000 000\+ articles/,'بیش از ۱٬۰۰۰٬۰۰۰ مقاله')
statistics.gsub!(/100 000\+ articles/,'بیش از ۱۰۰٬۰۰۰ مقاله')
statistics.gsub!(/10 000\+ articles/,'بیش از ۱۰٬۰۰۰ مقاله')
statistics.gsub!(/1 000\+ articles/,'بیش از ۱۰۰۰ مقاله')
statistics.gsub!(/100\+ articles/,'بیش از ۱۰۰ مقاله')
statistics.gsub!(/10\+ articles/,'بیش از ۱۰ مقاله')
statistics.gsub!(/1\+ articles/,'بیش از ۱ مقاله')
statistics.gsub!(/0 articles in language \(other than main page\)/,'بدون مقاله (به غیر از صفحهٔ اصلی)')
statistics.gsub!(/Grand Total/,'جمع همه')

statistics.gsub!(/! &#8470;/,'! رتبه')
statistics.gsub!(/! Language \(local\)/,'! زبان (محلی)')
statistics.gsub!(/! Language/,'! زبان')
statistics.gsub!(/! Wiki/,'! ویکی')
statistics.gsub!(/! Articles/,'! مقاله‌ها')
statistics.gsub!(/! Total/,'! مجموع')
statistics.gsub!(/! Edits/,'! ویرایش‌ها')
statistics.gsub!(/! Admins/,'! مدیرها')
statistics.gsub!(/! Users/,'! کاربرها')
statistics.gsub!(/! Active Users/,'! کاربرهای فعال')
statistics.gsub!(/! Images/,'! تصویرها')
statistics.gsub!(/! Depth/,'! ژرفا')
statistics.gsub!(/(\d) (\d)/,'\1,\2')

#convert english name to persian and link to fa wikipedia
gsub_english_name_to_persian(statistics)

#puts statistics
config = MediaWiki::Config.new ARGV

mw = MediaWiki::Gateway.new(config.url)
mw.login(config.user, config.pw)
mw.create 'فهرست ویکی‌پدیاها/جدول', statistics, :summary => "bot: update stats", :overwrite => true
