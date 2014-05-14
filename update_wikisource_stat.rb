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
uri = URI('http://wikistats.wmflabs.org/displayw.php?t=ws')
request = Net::HTTP::Get.new uri.request_uri, headers

res = Net::HTTP.start(uri.host, uri.port) do |http|
  http.request request # Net::HTTPResponse object
end

statistics = res.body.force_encoding("UTF-8")

statistics.gsub!(/left/, 'right')
statistics.gsub!(/(<pre>|<\/pre>)/,'')
statistics.gsub!(/Grand Total/,'جمع همه')
statistics.gsub!(/! &#8470;/,'! رتبه')
statistics.gsub!(/! Language \(local\)/,'! زبان (محلی)')
statistics.gsub!(/! Language/,'! زبان')
statistics.gsub!(/! Wiki/,'! ویکی')
statistics.gsub!(/! Good/,'! نبشته‌ها')
statistics.gsub!(/! Articles/,'! مقاله‌ها')
statistics.gsub!(/! Total/,'! مجموع')
statistics.gsub!(/! Edits/,'! ویرایش‌ها')
statistics.gsub!(/! Admins/,'! مدیرها')
statistics.gsub!(/! Users/,'! کاربرها')
statistics.gsub!(/! Active Users/,'! کاربرهای فعال')
statistics.gsub!(/! Images/,'! تصویرها')
statistics.gsub!(/! Updated/,'! به روز شده')
statistics.gsub!(/(\d) (\d)/,'\1,\2')
statistics.gsub!(/Multilingual/, 'چندزبانه')
statistics.gsub!(/Portal/, 'درگاه')

gsub_english_name_to_persian(statistics)

#convert english name to persian and link to fa wikipedia
gsub_english_name_to_persian(statistics)

#puts statistics
config = MediaWiki::Config.new ARGV

mw = MediaWiki::Gateway.new(config.url)
mw.login(config.user, config.pw)
mw.create 'Wikisource/Table/fa', statistics, :summary => "bot: update stats", :overwrite => true
