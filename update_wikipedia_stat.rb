#!/usr/bin/env ruby
#encoding: utf-8

if RUBY_VERSION.to_f < 1.9
  require File.expand_path('../force_encoding', __FILE__)
  require 'jcode'
  $KCODE = 'u'
end

require 'net/http'
require 'rubygems'
require 'bundler/setup'
require 'media_wiki'
require File.expand_path('../language_name', __FILE__)

headers =  {
            'User-agent'=>'update_stats/0.5beta (http://iCEAGE.github.com/wikimedia_scripts/; wikimedia_scripts@example.com)'
        }

uri = URI.parse('http://wikistats.wmflabs.org/wikipedias_wiki.php')
request = Net::HTTP::Get.new uri.request_uri, headers

res = Net::HTTP.start(uri.host, uri.port) do |http|
  http.request request # Net::HTTPResponse object
end

statistics = res.body.force_encoding("UTF-8")

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
statistics.gsub!(/(\| class=\"plainlinksneverexpand\")/, "\n" + '\1')

#convert english name to persian and link to fa wikipedia
gsub_english_name_to_persian(statistics)

#puts statistics
config = MediaWiki::Config.new ARGV

mw = MediaWiki::Gateway.new(config.url, ignorewarnings: true)
mw.login(config.user, config.pw)
mw.create 'List of Wikipedias/Table/fa', statistics,
  summary: "bot: update stats", overwrite: true, ignorewarnings: true
