#encoding: utf-8

if RUBY_VERSION.to_f < 1.9
  require 'force_encoding'
  require 'jcode'
  $KCODE = 'u'
end

def gsub_english_name_to_persian(s)
  s.gsub!(/\[\[w:(English language\|English)\]\]/i, '[[w:fa:زبان انگلیسی|انگلیسی]]')
  s.gsub!(/\[\[w:(German language\|German)\]\]/i, '[[w:fa:زبان آلمانی|آلمانی]]')
  s.gsub!(/\[\[w:(French language\|French)\]\]/i, '[[w:fa:زبان فرانسوی|فرانسوی]]')
  s.gsub!(/\[\[w:(Polish language\|Polish)\]\]/i, '[[w:fa:زبان لهستانی|لهستانی]]')
  s.gsub!(/\[\[w:(Italian language\|Italian)\]\]/i, '[[w:fa:زبان ایتالیایی|ایتالیایی]]')
  s.gsub!(/\[\[w:(Japanese language\|Japanese)\]\]/i, '[[w:fa:زبان ژاپنی|ژاپنی]]')
  s.gsub!(/\[\[w:(Spanish language\|Spanish)\]\]/i, '[[w:fa:زبان اسپانیایی|اسپانیایی]]')
  s.gsub!(/\[\[w:(Russian language\|Russian)\]\]/i, '[[w:fa:زبان روسی|روسی]]')
  s.gsub!(/\[\[w:(Portuguese language\|Portuguese)\]\]/i, '[[w:fa:زبان پرتغالی|پرتغالی]]')
  s.gsub!(/\[\[w:(Dutch language\|Dutch)\]\]/i, '[[w:fa:زبان هلندی|هلندی]]')
  s.gsub!(/\[\[w:(Swedish language\|Swedish)\]\]/i, '[[w:fa:زبان سوئدی|سوئدی]]')
  s.gsub!(/\[\[w:(Chinese language\|Chinese)\]\]/i, '[[w:fa:زبان چینی|چینی]]')
  s.gsub!(/\[\[w:(Catalan language\|Catalan)\]\]/i, '[[w:fa:زبان کاتالان|کاتالان]]')
  s.gsub!(/\[\[w:(Ukrainian language\|Ukrainian)\]\]/i, '[[w:fa:زبان اوکراینی|اوکراینی]]')
  s.gsub!(/\[\[w:(Finnish language\|Finnish)\]\]/i, '[[w:fa:زبان فنلاندی|فنلاندی]]')
  s.gsub!(/\[\[w:(Vietnamese language\|Vietnamese)\]\]/i, '[[w:fa:زبان ویتنامی|ویتنامی]]')
  s.gsub!(/\[\[w:(Czech language\|Czech)\]\]/i, '[[w:fa:زبان چکی|چکی]]')
  s.gsub!(/\[\[w:(Hungarian language\|Hungarian)\]\]/i, '[[w:fa:زبان مجاری|مجاری]]')
  s.gsub!(/\[\[w:(Korean language\|Korean)\]\]/i, '[[w:fa:زبان کره‌ای|کره‌ای]]')
  s.gsub!(/\[\[w:(Romanian language\|Romanian)\]\]/i, '[[w:fa:زبان رومانیایی|رومانیایی]]')
  s.gsub!(/\[\[w:(Indonesian language\|Indonesian)\]\]/i, '[[w:fa:زبان اندونزیایی|اندونزیایی]]')
  s.gsub!(/\[\[w:(Turkish language\|Turkish)\]\]/i, '[[w:fa:زبان ترکی استانبولی|ترکی استانبولی]]')
  s.gsub!(/\[\[w:(Danish language\|Danish)\]\]/i, '[[w:fa:زبان دانمارکی|دانمارکی]]')
  s.gsub!(/\[\[w:(Arabic language\|Arabic)\]\]/i, '[[w:fa:زبان عربی|عربی]]')
  s.gsub!(/\[\[w:(Esperanto language\|Esperanto)\]\]/i, '[[w:fa:زبان اسپرانتو|اسپرانتو]]')
  s.gsub!(/\[\[w:(Serbian language\|Serbian)\]\]/i, '[[w:fa:زبان صربی|صربی]]')
  s.gsub!(/\[\[w:(Lithuanian language\|Lithuanian)\]\]/i, '[[w:fa:زبان لیتوانیایی|لیتوانیایی]]')
  s.gsub!(/\[\[w:(Slovak language\|Slovak)\]\]/i, '[[w:fa:زبان اسلواکیایی|اسلواکیایی]]')
  s.gsub!(/\[\[w:(Persian language\|Persian)\]\]/i, '[[w:fa:زبان فارسی|فارسی]]')
  s.gsub!(/\[\[w:(Volap\&\#252\;k language\|Volap\&\#252\;k)\]\]/i, '[[w:fa:زبان ولاپوک|ولاپوک]]')
  s.gsub!(/\[\[w:(Hebrew language\|Hebrew)\]\]/i, '[[w:fa:زبان عبری|عبری]]')
  s.gsub!(/\[\[w:(Malay language\|Malay)\]\]/i, '[[w:fa:زبان مالایی|مالایی]]')
  s.gsub!(/\[\[w:(Bulgarian language\|Bulgarian)\]\]/i, '[[w:fa:زبان بلغاری|بلغاری]]')
  s.gsub!(/\[\[w:(Slovenian language\|Slovenian)\]\]/i, '[[w:fa:زبان اسلوونیایی|اسلوونیایی]]')
  s.gsub!(/\[\[w:(Croatian language\|Croatian)\]\]/i, '[[w:fa:زبان کرواتی|کرواتی]]')
  s.gsub!(/\[\[w:(Estonian language\|Estonian)\]\]/i, '[[w:fa:زبان استونیایی|استونیایی]]')
  s.gsub!(/\[\[w:(Hindi language\|Hindi)\]\]/i, '[[w:fa:زبان هندی|هندی]]')
  s.gsub!(/\[\[w:(Galician language\|Galician)\]\]/i, '[[w:fa:زبان گالیسی|گالیسی]]')
  s.gsub!(/\[\[w:(Thai language\|Thai)\]\]/i, '[[w:fa:زبان تایلندی|تایلندی]]')
  s.gsub!(/\[\[w:(Basque language\|Basque)\]\]/i, '[[w:fa:زبان باسکی|باسکی]]')
  s.gsub!(/\[\[w:(Greek language\|Greek)\]\]/i, '[[w:fa:زبان یونانی|یونانی]]')
  s.gsub!(/\[\[w:(Azerbaijani language\|Azerbaijani)\]\]/i, '[[w:fa:زبان ترکی آذربایجانی|ترکی آذربایجانی]]')
  s.gsub!(/\[\[w:(Latin language\|Latin)\]\]/i, '[[w:fa:زبان لاتین|لاتین]]')
  s.gsub!(/\[\[w:(Tagalog language\|Tagalog)\]\]/i, '[[w:fa:زبان تاگالوگ|تاگالوگ]]')
  s.gsub!(/\[\[w:(Telugu language\|Telugu)\]\]/i, '[[w:fa:زبان تلگو|تلگو]]')
  s.gsub!(/\[\[w:(Georgian language\|Georgian)\]\]/i, '[[w:fa:زبان گرجی|گرجی]]')
  s.gsub!(/\[\[w:(Macedonian language\|Macedonian)\]\]/i, '[[w:fa:زبان مقدونی|مقدونی]]')
  s.gsub!(/\[\[w:(Serbo\-Croatian language\|Serbo\-Croatian)\]\]/i, '[[w:fa:زبان صربی کرواتی|صربی کرواتی]]')
  s.gsub!(/\[\[w:(Breton language\|Breton)\]\]/i, '[[w:fa:زبان برتون|برتون]]')
  s.gsub!(/\[\[w:(Belarusian \(Tara\&\#353\;kievica\) language\|Belarusian \(Tara\&\#353\;kievica\))\]\]/i, '[[w:fa:زبان بلاروسی|بلاروسی]]')
  s.gsub!(/\[\[w:(Latvian language\|Latvian)\]\]/i, '[[w:fa:زبان لتونیایی|لتونیایی]]')
  s.gsub!(/\[\[w:(Marathi language\|Marathi)\]\]/i, '[[w:fa:زبان مراتی|مراتی]]')
  s.gsub!(/\[\[w:(Javanese language\|Javanese)\]\]/i, '[[w:fa:زبان جاوه‌ای|جاوه‌ای]]')
  s.gsub!(/\[\[w:(Luxembourgish language\|Luxembourgish)\]\]/i, '[[w:fa:زبان لوکزامبورگی|لوکزامبورگی]]')
  s.gsub!(/\[\[w:(Welsh language\|Welsh)\]\]/i, '[[w:fa:زبان ولزی|ولزی]]')
  s.gsub!(/\[\[w:(Albanian language\|Albanian)\]\]/i, '[[w:fa:زبان آلبانیایی|آلبانیایی]]')
  s.gsub!(/\[\[w:(Bosnian language\|Bosnian)\]\]/i, '[[w:fa:زبان بوسنیایی|بوسنیایی]]')
  s.gsub!(/\[\[w:(Icelandic language\|Icelandic)\]\]/i, '[[w:fa:زبان ایسلندی|ایسلندی]]')
  s.gsub!(/\[\[w:(Tamil language\|Tamil)\]\]/i, '[[w:fa:زبان تامیلی|تامیلی]]')
  s.gsub!(/\[\[w:(Belarusian language\|Belarusian)\]\]/i, '[[w:fa:زبان بلاروسی|بلاروسی]]')
  s.gsub!(/\[\[w:(Aragonese language\|Aragonese)\]\]/i, '[[w:fa:زبان آراگونی|آراگونی]]')
  s.gsub!(/\[\[w:(Occitan language\|Occitan)\]\]/i, '[[w:fa:زبان اکسیتان|اکسیتان]]')
  s.gsub!(/\[\[w:(Bengali language\|Bengali)\]\]/i, '[[w:fa:زبان بنگالی|بنگالی]]')
  s.gsub!(/\[\[w:(Ido language\|Ido)\]\]/i, '[[w:fa:زبان ایدو|ایدو]]')
  s.gsub!(/\[\[w:(Swahili language\|Swahili)\]\]/i, '[[w:fa:زبان سواحیلی|سواحیلی]]')
  s.gsub!(/\[\[w:(Gujarati language\|Gujarati)\]\]/i, '[[w:fa:زبان گجراتی|گجراتی]]')
  s.gsub!(/\[\[w:(Malayalam language\|Malayalam)\]\]/i, '[[w:fa:زبان مالایالم|مالایالم]]')
  s.gsub!(/\[\[w:(Afrikaans language\|Afrikaans)\]\]/i, '[[w:fa:زبان آفریکانس|آفریکانس]]')
  s.gsub!(/\[\[w:(Sicilian language\|Sicilian)\]\]/i, '[[w:fa:زبان سیسیلی|سیسیلی]]')
  s.gsub!(/\[\[w:(Urdu language\|Urdu)\]\]/i, '[[w:fa:زبان اردو|اردو]]')
  s.gsub!(/\[\[w:(Kurdish language\|Kurdish)\]\]/i, '[[w:fa:زبان کردی|کردی]]')
  s.gsub!(/\[\[w:(Sundanese language\|Sundanese)\]\]/i, '[[w:fa:زبان سوندایی|سوندایی]]')
  s.gsub!(/\[\[w:(Armenian language\|Armenian)\]\]/i, '[[w:fa:زبان ارمنی|ارمنی]]')
  s.gsub!(/\[\[w:(Irish language\|Irish)\]\]/i, '[[w:fa:زبان ایرلندی|ایرلندی]]')
  s.gsub!(/\[\[w:(Chuvash language\|Chuvash)\]\]/i, '[[w:fa:زبان چوواشی|چوواشی]]')
  s.gsub!(/\[\[w:(Nepali language\|Nepali)\]\]/i, '[[w:fa:زبان نپالی|نپالی]]')
  s.gsub!(/\[\[w:(Kannada language\|Kannada)\]\]/i, '[[w:fa:زبان کانارا|کانارا]]')
  s.gsub!(/\[\[w:(Tajik language\|Tajik)\]\]/i, '[[w:fa:زبان تاجیکی|تاجیکی]]')
  s.gsub!(/\[\[w:(Kazakh language\|Kazakh)\]\]/i, '[[w:fa:زبان قزاقی|قزاقی]]')
  s.gsub!(/\[\[w:(Tatar language\|Tatar)\]\]/i, '[[w:fa:زبان تاتاری|تاتاری]]')
  s.gsub!(/\[\[w:(Yiddish language\|Yiddish)\]\]/i, '[[w:fa:زبان ییدیش|ییدیش]]')
  s.gsub!(/\[\[w:(Alemannic language\|Alemannic)\]\]/i, '[[w:fa:زبان آلمانیش|آلمانیش]]')
  s.gsub!(/\[\[w:(Alemannic German language\|Alemannic German)\]\]/i, '[[w:fa:زبان آلمانیش|آلمانیش]]')
  s.gsub!(/\[\[w:(Scottish Gaelic language\|Scottish Gaelic)\]\]/i, '[[w:fa:زبان گالیک اسکاتلندی|گالیک اسکاتلندی]]')
  s.gsub!(/\[\[w:(Ossetian language\|Ossetian)\]\]/i, '[[w:fa:زبان آسی|آسی]]')
  s.gsub!(/\[\[w:(Uzbek language\|Uzbek)\]\]/i, '[[w:fa:زبان ازبکی|ازبکی]]')
  s.gsub!(/\[\[w:(Sakha language\|Sakha)\]\]/i, '[[w:fa:زبان یاکوتی|یاکوتی]]')
  s.gsub!(/\[\[w:(Egyptian Arabic language\|Egyptian Arabic)\]\]/i, '[[w:fa:زبان عربی مصری|عربی مصری]]')
  s.gsub!(/\[\[w:(Amharic language\|Amharic)\]\]/i, '[[w:fa:زبان امهری|امهری]]')
  s.gsub!(/\[\[w:(Maori language\|Maori)\]\]/i, '[[w:fa:زبان مائوری|مائوری]]')
  s.gsub!(/\[\[w:(Corsican language\|Corsican)\]\]/i, '[[w:fa:زبان کرسی|کرسی]]')
  s.gsub!(/\[\[w:(Gilaki language\|Gilaki)\]\]/i, '[[w:fa:زبان گیلکی|گیلکی]]')
  s.gsub!(/\[\[w:(Mongolian language\|Mongolian)\]\]/i, '[[w:fa:زبان مغولی|مغولی]]')
  s.gsub!(/\[\[w:(Interlingua language\|Interlingua)\]\]/i, '[[w:fa:زبان اینترلینگوا|اینترلینگوا]]')
  s.gsub!(/\[\[w:(Burmese language\|Burmese)\]\]/i, '[[w:fa:زبان برمه‌ای|برمه‌ای]]')
  s.gsub!(/\[\[w:(Faroese language\|Faroese)\]\]/i, '[[w:fa:زبان فاروئی|فاروئی]]')
  s.gsub!(/\[\[w:(Sinhalese language\|Sinhalese)\]\]/i, '[[w:fa:زبان سینهالی|سینهالی]]')
  s.gsub!(/\[\[w:(Turkmen language\|Turkmen)\]\]/i, '[[w:fa:زبان ترکمنی|ترکمنی]]')
  s.gsub!(/\[\[w:(Sanskrit language\|Sanskrit)\]\]/i, '[[w:fa:زبان سانسکریت|سانسکریت]]')
  s.gsub!(/\[\[w:(Manx language\|Manx)\]\]/i, '[[w:fa:زبان مانکس|مانکس]]')
  s.gsub!(/\[\[w:(Divehi language\|Divehi)\]\]/i, '[[w:fa:زبان دیوهی|دیوهی]]')
  s.gsub!(/\[\[w:(Sorani language\|Sorani)\]\]/i, '[[w:fa:زبان سورانی|سورانی]]')
  s.gsub!(/\[\[w:(Zazaki language\|Zazaki)\]\]/i, '[[w:fa:زبان زازاکی|زازاکی]]')
  s.gsub!(/\[\[w:(Romansh language\|Romansh)\]\]/i, '[[w:fa:زبان رومانش|رومانش]]')
  s.gsub!(/\[\[w:(Mazandarani language\|Mazandarani)\]\]/i, '[[w:fa:زبان مازندرانی|مازندرانی]]')
  s.gsub!(/\[\[w:(Uyghur language\|Uyghur)\]\]/i, '[[w:fa:زبان اویغوری|اویغوری]]')
  s.gsub!(/\[\[w:(Maltese language\|Maltese)\]\]/i, '[[w:fa:زبان مالتی|مالتی]]')
  s.gsub!(/\[\[w:(Tibetan language\|Tibetan)\]\]/i, '[[w:fa:زبان تبتی|تبتی]]')
  s.gsub!(/\[\[w:(Anglo-Saxon language\|Anglo-Saxon)\]\]/i, '[[w:fa:زبان انگلیسی باستان|انگلیسی باستان]]')
  s.gsub!(/\[\[w:(Novial language\|Novial)\]\]/i, '[[w:fa:زبان نوویال|نوویال]]')
  s.gsub!(/\[\[w:(Kashubian language\|Kashubian)\]\]/i, '[[w:fa:زبان کاشوبی|کاشوبی]]')
  s.gsub!(/\[\[w:(Sardinian language\|Sardinian)\]\]/i, '[[w:fa:زبان ساردنیایی|ساردنیایی]]')
  s.gsub!(/\[\[w:(Ladino language\|Ladino)\]\]/i, '[[w:fa:زبان لادینو|لادینو]]')
  s.gsub!(/\[\[w:(Khmer language\|Khmer)\]\]/i, '[[w:fa:زبان خمر|خمر]]')
  s.gsub!(/\[\[w:(Cambodian language\|Cambodian)\]\]/i, '[[w:fa:زبان خمر|خمر]]')
  s.gsub!(/\[\[w:(Pashto language\|Pashto)\]\]/i, '[[w:fa:زبان پشتو|پشتو]]')
  s.gsub!(/\[\[w:(Cornish language\|Cornish)\]\]/i, '[[w:fa:زبان کورنی|کورنی]]')
  s.gsub!(/\[\[w:(Ripuarian language\|Ripuarian)\]\]/i, '[[w:fa:زبان ریپواری|ریپواری]]')
  s.gsub!(/\[\[w:(Punjabi language\|Punjabi)\]\]/i, '[[w:fa:زبان پنجابی|پنجابی]]')
  s.gsub!(/\[\[w:(Panjabi language\|Panjabi)\]\]/i, '[[w:fa:زبان پنجابی|پنجابی]]')
  s.gsub!(/\[\[w:(Silesian language\|Silesian)\]\]/i, '[[w:fa:زبان سیلزیایی|سیلزیایی]]')
  s.gsub!(/\[\[w:(Tongan language\|Tongan)\]\]/i, '[[w:fa:زبان تونگایی|تونگایی]]')
  s.gsub!(/\[\[w:(Karachay\-Balkar language\|Karachay\-Balkar)\]\]/i, '[[w:fa:زبان کاراچایی-بالکاری|کاراچایی-بالکاری]]')
  s.gsub!(/\[\[w:(Crimean Tatar language\|Crimean Tatar)\]\]/i, '[[w:fa:زبان تاتاری کریمه|تاتاری کریمه]]')
  s.gsub!(/\[\[w:(Kirghiz language\|Kirghiz)\]\]/i, '[[w:fa:زبان قرقیزی|قرقیزی]]')
  s.gsub!(/\[\[w:(Bashkir language\|Bashkir)\]\]/i, '[[w:fa:زبان باشقیری|باشقیری]]')
  s.gsub!(/\[\[w:(Wolof language\|Wolof)\]\]/i, '[[w:fa:زبان ولوف|ولوف]]')
  s.gsub!(/\[\[w:(Greenlandic language\|Greenlandic)\]\]/i, '[[w:fa:زبان گرینلندی|گرینلندی]]')
  s.gsub!(/\[\[w:(Gagauz language\|Gagauz)\]\]/i, '[[w:fa:زبان گاگاووز|گاگاووز]]')
  s.gsub!(/\[\[w:(Abkhazian language\|Abkhazian)\]\]/i, '[[w:fa:زبان آبخازی|آبخازی]]')
  s.gsub!(/\[\[w:(Avar language\|Avar)\]\]/i, '[[w:fa:زبان آواری|آواری]]')
  s.gsub!(/\[\[w:(Romani language\|Romani)\]\]/i, '[[w:fa:زبان رومانی|رومانی]]')
  s.gsub!(/\[\[w:(Karakalpak language\|Karakalpak)\]\]/i, '[[w:fa:زبان قره‌قالپاقی|قره‌قالپاقی]]')
  s.gsub!(/\[\[w:(Moldovan language\|Moldovan)\]\]/i, '[[w:fa:زبان مولداویایی|مولداویایی]]')
  s.gsub!(/\[\[w:(Kashmiri language\|Kashmiri)\]\]/i, '[[w:fa:زبان کشمیری|کشمیری]]')
  s.gsub!(/\[\[w:(Bislama language\|Bislama)\]\]/i, '[[w:fa:زبان بیسلاما|بیسلاما]]')
  s.gsub!(/\[\[w:(Assamese language\|Assamese)\]\]/i, '[[w:fa:زبان آسامی|آسامی]]')
  s.gsub!(/\[\[w:(Inuktitut language\|Inuktitut)\]\]/i, '[[w:fa:زبان اینوکتیتوت|اینوکتیتوت]]')
  s.gsub!(/\[\[w:(Tigrinya language\|Tigrinya)\]\]/i, '[[w:fa:زبان تیگرینیایی|تیگرینیایی]]')
  s.gsub!(/\[\[w:(Dzongkha language\|Dzongkha)\]\]/i, '[[w:fa:زبان دزونگخا|دزونگخا]]')
  s.gsub!(/\[\[w:(Xhosa language\|Xhosa)\]\]/i, '[[w:fa:زبان خوسایی|خوسایی]]')
  s.gsub!(/\[\[w:(Xhosan language\|Xhosan)\]\]/i, '[[w:fa:زبان خوسایی|خوسایی]]')
  s.gsub!(/\[\[w:(Kanuri language\|Kanuri)\]\]/i, '[[w:fa:زبان کنوری|کنوری]]')
  s.gsub!(/\[\[w:(Herero language\|Herero)\]\]/i, '[[w:fa:زبان هررو|هررو]]')
  s.gsub!(/\[\[w:(Sindhi language\|Sindhi)\]\]/i, '[[w:fa:زبان سندی|سندی]]')
  s.gsub!(/\[\[w:(Norwegian \(Bokm\&\#229\;l\) language\|Norwegian \(Bokm\&\#229\;l\))\]\]/i, '[[w:fa:زبان نروژی|نروژی (بوکمال)]]')
  s.gsub!(/\[\[w:(Mirandese language\|Mirandese)\]\]/i, '[[w:fa:زبان میراندی|میراندی]]')
  s.gsub!(/\[\[w:(Latgalian language\|Latgalian)\]\]/i, '[[w:fa:زبان لاتگالی|لاتگالی]]')
  s.gsub!(/\[\[w:(Kabardian Circassian language\|Kabardian Circassian)\]\]/i, '[[w:fa:زبان کاباردی|کاباردی]]')
  s.gsub!(/\[\[w:(Gothic language\|Gothic)\]\]/i, '[[w:fa:زبان گوتیک|گوتیک]]')
  s.gsub!(/\[\[w:(Buryat \(Russia\) language\|Buryat \(Russia\))\]\]/i, '[[w:fa:زبان بوریاتی|بوریاتی]]')
  s.gsub!(/\[\[w:(Zulu language\|Zulu)\]\]/i, '[[w:fa:زبان زولو|زولو]]')
  s.gsub!(/\[\[w:(Udmurt language\|Udmurt)\]\]/i, '[[w:fa:زبان اودمورت|اودمورت]]')
  s.gsub!(/\[\[w:(Friulian language\|Friulian)\]\]/i, '[[w:fa:زبان فریولی|فریولی]]')
  s.gsub!(/\[\[w:(Komi language\|Komi)\]\]/i, '[[w:fa:زبان کومی|کومی]]')
  s.gsub!(/\[\[w:(Franco-Proven&#231;al\/Arpitan language\|Franco-Proven&#231;al\/Arpitan)\]\]/i, '[[w:fa:زبان آرپیتان|آرپیتان]]')
  s.gsub!(/\[\[w:(Extremaduran language\|Extremaduran)\]\]/i, '[[w:fa:زبان اکسترامادورایی|اکسترامادورایی]]')
  s.gsub!(/\[\[w:(Kalmyk language\|Kalmyk)\]\]/i, '[[w:fa:زبان قالمیق|قالمیق]]')
  s.gsub!(/\[\[w:(Picard language\|Picard)\]\]/i, '[[w:fa:زبان پیکاردی|پیکاردی]]')
  s.gsub!(/\[\[w:(Erzya language\|Erzya)\]\]/i, '[[w:fa:زبان ارزیا|ارزیا]]')
  s.gsub!(/\[\[w:(Emilian\-Romagnol language\|Emilian\-Romagnol)\]\]/i, '[[w:fa:زبان امیلیانو-رومانیولو|امیلیانو-رومانیولو]]')
  s.gsub!(/\[\[w:(Assyrian Neo\-Aramaic language\|Assyrian Neo\-Aramaic)\]\]/i, '[[w:fa:زبان آشوری|آشوری]]')
  s.gsub!(/\[\[w:(Chechen language\|Chechen)\]\]/i, '[[w:fa:زبان چچنی|چچنی]]')
  s.gsub!(/\[\[w:(Moksha language\|Moksha)\]\]/i, '[[w:fa:زبان موکشا|موکشا]]')
  s.gsub!(/\[\[w:(Norman language\|Norman)\]\]/i, '[[w:fa:زبان نورمان|نورمان]]')
  s.gsub!(/\[\[w:(Venetian language\|Venetian)\]\]/i, '[[w:fa:زبان ونتی|ونتی]]')
  s.gsub!(/\[\[w:(Nahuatl language\|Nahuatl)\]\]/i, '[[w:fa:زبان ناهواتل|ناهواتل]]')
  s.gsub!(/\[\[w:(Asturian language\|Asturian)\]\]/i, '[[w:fa:زبان آستوریایی|آستوریایی]]')
  s.gsub!(/\[\[w:(Neapolitan language\|Neapolitan)\]\]/i, '[[w:fa:زبان ناپولی|ناپولی]]')
  s.gsub!(/\[\[w:(Samogitian language\|Samogitian)\]\]/i, '[[w:fa:زبان ساموگیتی|ساموگیتی]]')
  s.gsub!(/\[\[w:(Walloon language\|Walloon)\]\]/i, '[[w:fa:زبان والونی|والونی]]')
  s.gsub!(/\[\[w:(Piedmontese language\|Piedmontese)\]\]/i, '[[w:fa:زبان پیدمونتی|پیدمونتی]]')
  s.gsub!(/\[\[w:(Lombard language\|Lombard)\]\]/i, '[[w:fa:زبان لومبارد|لومبارد]]')
  s.gsub!(/\[\[w:(Quechua language\|Quechua)\]\]/i, '[[w:fa:کچوآ|کچوآ]]')
  s.gsub!(/\[\[w:(Aromanian language\|Aromanian)\]\]/i, '[[w:fa:زبان آرومانی|آرومانی]]')
  s.gsub!(/\[\[w:(Waray\-Waray language\|Waray\-Waray)\]\]/i, '[[w:fa:زبان وینارایی|وینارایی]]')
  s.gsub!(/\[\[w:(Norwegian \(Nynorsk\) language\|Norwegian \(Nynorsk\))\]\]/i, '[[w:fa:زبان نینورسک|نینورسک]]')
  s.gsub!(/\[\[w:(Newar \/ Nepal Bhasa language\|Newar \/ Nepal Bhasa)\]\]/i, '[[w:fa:زبان نپال بهاسایی|نپال بهاسایی]]')
  s.gsub!(/\[\[w:(Haitian language\|Haitian)\]\]/i, '[[w:fa:زبان کریول آییسینی|کریول آییسینی]]')
  s.gsub!(/\[\[w:(Cebuano language\|Cebuano)\]\]/i, '[[w:fa:زبان سینوگبانونی|سینوگبانونی]]')
  s.gsub!(/\[\[w:(Malagasy language\|Malagasy)\]\]/i, '[[w:fa:زبان مالاگاسی|مالاگاسی]]')
  s.gsub!(/\[\[w:(Yoruba language\|Yoruba)\]\]/i, '[[w:fa:زبان یوروبایی|یوروبایی]]')
  s.gsub!(/\[\[w:(West Frisian language\|West Frisian)\]\]/i, '[[w:fa:زبان فریسکی|فریسکی]]')
  s.gsub!(/\[\[w:(Western Panjabi language\|Western Panjabi)\]\]/i, '[[w:fa:زبان شاه مکهی پنجابی|شاه مکهی پنجابی]]')
  s.gsub!(/\[\[w:(Low Saxon language\|Low Saxon)\]\]/i, '[[w:fa:زبان آلمانی سفلای غربی |آلمانی سفلای غربی ]]')
  s.gsub!(/\[\[w:(Scots language\|Scots)\]\]/i, '[[w:fa:زبان اسکاتس|اسکاتس]]')
  s.gsub!(/\[\[w:(Bavarian language\|Bavarian)\]\]/i, '[[w:fa:زبان اتریشی-باواریایی|اتریشی-باواریایی]]')
  s.gsub!(/\[\[w:(West Flemish language\|West Flemish)\]\]/i, '[[w:fa:زبان فلاندری غربی|فلاندری غربی]]')
  s.gsub!(/\[\[w:(Wu language\|Wu)\]\]/i, '[[w:fa:زبان وو|وو]]')
  s.gsub!(/\[\[w:(Zeelandic language\|Zeelandic)\]\]/i, '[[w:fa:زبان زیلاندی|زیلاندی]]')
  s.gsub!(/\[\[w:(Franco\-Provençal\/Arpitan language\|Franco\-Provençal\/Arpitan)\]\]/i, '[[w:fa:زبان آرپیتان|آرپیتان]]')
  s.gsub!(/\[\[w:(Saterland Frisian language\|Saterland Frisian)\]\]/i, '[[w:fa:زبان فریسی ساترلند|فریسی ساترلند]]')
  s.gsub!(/\[\[w:(North Frisian language\|North Frisian)\]\]/i, '[[w:fa:زبان فریسی شمالی|فریسی شمالی]]')
  s.gsub!(/\[\[w:(Bambara language\|Bambara)\]\]/i, '[[w:fa:زبان بامبارایی|بامبارایی]]')
  s.gsub!(/\[\[w:(Vepsian language\|Vepsian)\]\]/i, '[[w:fa:زبان وپس|وپس]]')
  s.gsub!(/\[\[w:(Sesotho language\|Sesotho)\]\]/i, '[[w:fa:زبان سوتو|سوتو]]')
  s.gsub!(/\[\[w:(Southern Sotho language\|Southern Sotho)\]\]/i, '[[w:fa:زبان سوتو|سوتو]]')
  s.gsub!(/\[\[w:(Raeto Romance language\|Raeto Romance)\]\]/i, '[[w:fa:زبان رتی-رومانی|رتی-رومانی]]')
  s.gsub!(/\[\[w:(Simple English language\|Simple English)\]\]/i, '[[w:fa:زبان انگلیسی ساده|انگلیسی ساده]]')
  s.gsub!(/\[\[w:(Bishnupriya Manipuri language\|Bishnupriya Manipuri)\]\]/i, '[[w:fa:زبان مانیپوری|مانیپوری]]')
  s.gsub!(/\[\[w:(Cantonese language\|Cantonese)\]\]/i, '[[w:fa:زبان کانتونی معیار|کانتونی معیار]]')
  s.gsub!(/\[\[w:(Fiji Hindi language\|Fiji Hindi)\]\]/i, '[[w:fa:زبان هندی فیجی|هندی فیجی]]')
  s.gsub!(/\[\[w:(Min Nan language\|Min Nan)\]\]/i, '[[w:fa:زبان مین نان|مین نان]]')
  s.gsub!(/\[\[w:(Limburgish language\|Limburgish)\]\]/i, '[[w:fa:زبان لیمبورخی|لیمبورخی]]')
  s.gsub!(/\[\[w:(Gan language\|Gan)\]\]/i, '[[w:fa:زبان چینی گن|چینی گن]]')
  s.gsub!(/\[\[w:(Hill Mari language\|Hill Mari)\]\]/i, '[[w:fa:زبان هیل ماری|هیل ماری]]')
  s.gsub!(/\[\[w:(Oriya language\|Oriya)\]\]/i, '[[w:fa:زبان اوریه|اوریه]]')
  s.gsub!(/\[\[w:(Pali language\|Pali)\]\]/i, '[[w:fa:زبان پالی|پالی]]')
  s.gsub!(/\[\[w:(Somali language\|Somali)\]\]/i, '[[w:fa:زبان سومالیایی|سومالیایی]]')
  s.gsub!(/\[\[w:(Aymara language\|Aymara)\]\]/i, '[[w:fa:زبان آیمارا|آیمارا]]')
  s.gsub!(/\[\[w:(Guarani language\|Guarani)\]\]/i, '[[w:fa:زبان گوارانی|گوارانی]]')
  s.gsub!(/\[\[w:(Franco-Proven\çal\/Arpitan language\|Franco-Proven\çal\/Arpitan)\]\]/i, '[[w:fa:زبان آرپیتان|آرپیتان]]')
  s.gsub!(/\[\[w:(Hawaiian language\|Hawaiian)\]\]/i, '[[w:fa:زبان هاوایی|هاوایی]]')
  s.gsub!(/\[\[w:(Aramaic language\|Aramaic)\]\]/i, '[[w:fa:زبان آرامی|آرامی]]')
  s.gsub!(/\[\[w:(Lezgian language\|Lezgian)\]\]/i, '[[w:fa:زبان لزگی|لزگی]]')
  s.gsub!(/\[\[w:(Shona language\|Shona)\]\]/i, '[[w:fa:زبان شونا|شونا]]')
  s.gsub!(/\[\[w:(Banjar language\|Banjar)\]\]/i, '[[w:fa:زبان بانجاری|بانجاری]]')
  s.gsub!(/\[\[w:(Tsonga language\|Tsonga)\]\]/i, '[[w:fa:زبان شنگانی|شنگانی]]')
  s.gsub!(/\[\[w:(Tarantino language\|Tarantino)\]\]/i, '[[w:fa:زبان تارانتینو|تارانتینو]]')
  s.gsub!(/\[\[w:(Buginese language\|Buginese)\]\]/i, '[[w:fa:زبان باسایوگی|باسایوگی]]')
  s.gsub!(/\[\[w:(Minangkabau language\|Minangkabau)\]\]/i, '[[w:fa:زبان مینغکاباو|مینغکاباو]]')
  s.gsub!(/\[\[w:(Kapampangan language\|Kapampangan)\]\]/i, '[[w:fa:زبان کاپامپانگان|کاپامپانگان]]')
  s.gsub!(/\[\[w:(Banyumasan language\|Banyumasan)\]\]/i, '[[w:fa:زبان بانیوماسان|بانیوماسان]]')
  s.gsub!(/\[\[w:(Papiamentu language\|Papiamentu)\]\]/i, '[[w:fa:زبان پاپیامنتو|پاپیامنتو]]')
  s.gsub!(/\[\[w:(Nauruan language\|Nauruan)\]\]/i, '[[w:fa:زبان نائورویی|نائورویی]]')
  s.gsub!(/\[\[w:(Tetum language\|Tetum)\]\]/i, '[[w:fa:زبان تتومی|تتومی]]')
  s.gsub!(/\[\[w:(Tuvan language\|Tuvan)\]\]/i, '[[w:fa:زبان تووان|تووان]]')
  s.gsub!(/\[\[w:(Hausa language\|Hausa)\]\]/i, '[[w:fa:زبان هوسه|هوسه]]')
  s.gsub!(/\[\[w:(Afar language\|Afar)\]\]/i, '[[w:fa:زبان عفار|عفار]]')
  s.gsub!(/\[\[w:(Upper Sorbian language\|Upper Sorbian)\]\]/i, '[[w:fa:زبان سوربی بالایی|سوربی بالایی]]')
  s.gsub!(/\[\[w:(Ilokano language\|Ilokano)\]\]/i, '[[w:fa:زبان ایلوکانو|ایلوکانو]]')
  s.gsub!(/\[\[w:(Classical Chinese language\|Classical Chinese)\]\]/i, '[[w:fa:زبان چینی کلاسیک|چینی کلاسیک]]')
  s.gsub!(/\[\[w:(Bihari language\|Bihari)\]\]/i, '[[w:fa:زبان بیهاری|بیهاری]]')
  s.gsub!(/\[\[w:(Interlingue language\|Interlingue)\]\]/i, '[[w:fa:زبان غربی|غربی]]')
  s.gsub!(/\[\[w:(Lingala language\|Lingala)\]\]/i, '[[w:fa:زبان لینگالایی|لینگالایی]]')
  s.gsub!(/\[\[w:(Lower Sorbian language\|Lower Sorbian)\]\]/i, '[[w:fa:زبان سوربی پایینی|سوربی پایینی]]')
  s.gsub!(/\[\[w:(Lao language\|Lao)\]\]/i, '[[w:fa:زبان لائو|لائو]]')
  s.gsub!(/\[\[w:(Venda language\|Venda)\]\]/i, '[[w:fa:زبان وندا|وندا]]')
  s.gsub!(/\[\[w:(Central Bicolano language\|Central Bicolano)\]\]/i, '[[w:fa:زبان بیکول مرکزی|بیکول مرکزی]]')
  s.gsub!(/\[\[w:(Hakka language\|Hakka)\]\]/i, '[[w:fa:زبان هاکا|هاکا]]')
  s.gsub!(/\[\[w:(Acehnese language\|Acehnese)\]\]/i, '[[w:fa:زبان آچه‌ای|آچه‌ای]]')
  s.gsub!(/\[\[w:(Cheyenne language\|Cheyenne)\]\]/i, '[[w:fa:زبان شاینی|شاینی]]')
  s.gsub!(/\[\[w:(Twi language\|Twi)\]\]/i, '[[w:fa:زبان اکانی|اکانی]]')
  s.gsub!(/\[\[w:(Cherokee language\|Cherokee)\]\]/i, '[[w:fa:زبان چروکی|چروکی]]')
  s.gsub!(/\[\[w:(Akan language\|Akan)\]\]/i, '[[w:fa:زبان اکانی|اکانی]]')
  s.gsub!(/\[\[w:(Chichewa language\|Chichewa)\]\]/i, '[[w:fa:زبان چوایی|چوایی]]')
  s.gsub!(/\[\[w:(Cree language\|Cree)\]\]/i, '[[w:fa:زبان کری|کری]]')
  s.gsub!(/\[\[w:(Inupiak language\|Inupiak)\]\]/i, '[[w:fa:زبان اینوپیات|اینوپیات]]')
  s.gsub!(/\[\[w:(Chamorro language\|Chamorro)\]\]/i, '[[w:fa:زبان چامورو|چامورو]]')
end
