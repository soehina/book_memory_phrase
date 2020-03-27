User.create!([
  {email: "kinako@example.com", encrypted_password: "$2a$11$BeubIifKZKPPdDzF1mY21.OhddpCZvJEphOZ9RTvuyRj5IyhXU9RW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "kinako", image: "IMG_6077.jpg"},
  {email: "hukushima@example.com", encrypted_password: "$2a$11$6hzOWgcXzn3n7cMfIEuAS.qDxDc6uIKn9Lv7ZuycB5d7eGvM2gVei", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "ふくしま", image: "IMG_7486.jpg"},
  {email: "hinako@example.com", encrypted_password: "$2a$11$5JxFzlRniiPNzYF1Nv0rUe1NhEDYhye5.xxxLGWq1JhVABrElQMNC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "hinako", image: "download20191003183443.png"},
  {email: "test@example.com", encrypted_password: "$2a$11$WwP86lx0GRIgmUxoAFK9/eG6n8ctVNhVXCRrpm1N.IUFlFWFg1iCq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "testuser", image: nil},
  {email: "hanabi@example.com", encrypted_password: "$2a$11$5/qdxrcMtdKbjF7EpAetueZCNU7kMJfjkqGiC1zdAyKA2q6my.yR.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, name: "はなび", image: "IMG_0431.jpg"}
])
Like.create!([
  {post_id: 25, user_id: 14},
  {post_id: 13, user_id: 14},
  {post_id: 20, user_id: 14},
  {post_id: 14, user_id: 14},
  {post_id: 29, user_id: 14},
  {post_id: 22, user_id: 6},
  {post_id: 29, user_id: 6},
  {post_id: 29, user_id: 7},
  {post_id: 21, user_id: 14},
  {post_id: 24, user_id: 14},
  {post_id: 34, user_id: 15},
  {post_id: 26, user_id: 15},
  {post_id: 14, user_id: 6},
  {post_id: 22, user_id: 14}
])
Post.create!([
  {content: "『タッチ』に並ぶ、あだち充の代表作の一つ。野球と恋愛をこれだけバランス良く描けるのはさすがあだち先生としか言えません。\r\n四人の切ない恋のすれ違いに何度読んでも涙します。", post_user: "きなこ", book_image: "https://images-na.ssl-images-amazon.com/images/I/51BTVDV0H2L._SX303_BO1,204,203,200_.jpg", title: "H2", phrase: "俺の思春期が１年半ずれてた。それだけさ。", post_user_id: 6, author: "あだち充"},
  {content: "夏目漱石の「月が綺麗ですね」を始め、様々な文豪の「I Love You」を集めた作品となっています。ロマンチックで多種多様な言葉達が、一層文豪を魅力に見せました。", post_user: "ふくしま", book_image: "https://m.media-amazon.com/images/I/41o6CPg-HkL._SL500_.jpg", title: "I Love You の訳し方", phrase: "すきになる　ということは　心を　ちぎってあげるのか　だから　こんなに痛いのか", post_user_id: 7, author: "望月竜馬"},
  {content: "現代文学作家・森見登美彦が手がける少年の成長と冒険の物語。街中にペンギンが現れる突飛な出だしだが、そんなファンタジーな世界を少年が懸命に論理的に捉えようとする様子が面白い。冒険に胸を踊らせたいときに読みたい一冊。", post_user: "きなこ", book_image: "https://images-na.ssl-images-amazon.com/images/I/51zN0cmbEIL._SX357_BO1,204,203,200_.jpg", title: "ペンギン・ハイウェイ", phrase: "他人に負けることは恥ずかしいことではないが、昨日の自分に負けるのは恥ずかしいことだ。", post_user_id: 6, author: "森見登美彦"},
  {content: "『おおきく振りかぶって』の作者が描く、人間の絶望とその中に僅かに光る希望の物語。登場人物の行動や言葉の一つ一つが痛いほど胸に刺さる強烈で印象的な作品。", post_user: "きなこ", book_image: "https://www.cmoa.jp/data/image/title/title_0000081254/VOLUME/100000812540001.jpg", title: "ヤサシイワタシ ", phrase: "あんた死にたいんじゃなくて、願う姿で生きたかったんだろ。", post_user_id: 6, author: "ひぐちアサ"},
  {content: "私が人生の教科書にしている漫画です。人を思いやる気持ちや、愛しいという感情、優しさ、あたたかさを子どもながらにとても鮮明に感じました、特にこのフレーズは今でも大切にしています。", post_user: "ふくしま", book_image: "https://images-na.ssl-images-amazon.com/images/I/51SN3HWVJAL._SX301_BO1,204,203,200_.jpg", title: "フルーツバスケット", phrase: "誰かにとってはそれがバカでも、ボクにとってはバカじゃないだけ。", post_user_id: 7, author: "高屋奈月"},
  {content: "少女のなんでもない一日が描かれる。家族が嫌いだけど愛しい。生き辛い世の中を憂いてみたりする。そして布団に潜り、今日も一日が終わる。思春期の少女を瑞々しい文章で描いた傑作。", post_user: "きなこ", book_image: "https://images-na.ssl-images-amazon.com/images/I/81w%2BiTAQEiL.jpg", title: "女生徒", phrase: "けれども、きっと来る、あすは来る、と信じて寝るのがいいのでしょう。", post_user_id: 6, author: "太宰治"},
  {content: "現代詩歌。銀色夏生の詩集。私の中でお気に入りの作品です。ポツリポツリとしずくのような優しい言葉が流れてきます。誰かに心を許したいときに読みたい一冊です。", post_user: "ふくしま", book_image: "https://shop.r10s.jp/rakutenkobo-ebooks/cabinet/6017/2000002446017.jpg", title: "このワガママなぼくたちを", phrase: "このワガママな僕たちを、許してくれてありがとう。", post_user_id: 7, author: "銀色夏生"},
  {content: "少女同士の淡い恋愛を描いた作品です。志村貴子先生の瑞々しいイラストが、少女たちの恋愛をとても透明で純粋なものに見せます。このフレーズにはどこかハッとさせられ、とても印象に残っています。", post_user: "きなこ", book_image: "https://www.cmoa.jp/data/image/title/title_0000040824/VOLUME/100000408240002.jpg", title: "青い花", phrase: "物語の主人公は、いつもどこか寂しいのね。", post_user_id: 6, author: "志村貴子"},
  {content: "SNSから現れた、現代ポエマー最果タヒさんの代表作。夜明け前のような、人を不安にさせるけどどこかとても美しい感覚にさせてくれます。", post_user: "ひなこ", book_image: "https://images-na.ssl-images-amazon.com/images/I/61t-Z7geSsL._SX338_BO1,204,203,200_.jpg", title: "夜空はいつでも最高密度の青色だ", phrase: "今日の私は、昨日の私を、無視できるから美しい。", post_user_id: 13, author: "最果タヒ"},
  {content: "野球を通した少年たちのリアルな成長を描いた本格野球漫画。いじめにより心を閉ざしてしまった主人公が捕手との出逢いにより少しずつ再生し成長する姿に勇気づけられる。", post_user: "はなび", book_image: "https://m.media-amazon.com/images/I/514KFX5DRTL._SL500_.jpg", title: "おおきく振りかぶって", phrase: "投手としてじゃなくても、オレはお前がスキだよ！", post_user_id: 15, author: "ひぐちアサ"},
  {content: "狸と天狗と人間が、京都を舞台に騒動を巻き起こす日常系ファンタジー。「面白く生きる」がいかに尊く素晴らしいかを教えてくれます。", post_user: "ふくしま", book_image: "https://images-fe.ssl-images-amazon.com/images/I/51MAAkIXh0L.jpg", title: "有頂天家族", phrase: "これも阿呆の血の然らしむるところだ。おもしろきことは、良きことなり！", post_user_id: 7, author: "森見登美彦"}
])
