module ApplicationHelper
  def default_meta_tags
    {
      site: 'ArtVibe',
      title: 'こんな美術館に行きました',
      reverse: true,
      separator: '|',   #Webサイト名とページタイトルを区切るために使用されるテキスト
      description: 'ページの説明',
      keywords: 'ページキーワード',   #キーワードを「,」区切りで設定する
      canonical: request.original_url,   #優先するurlを指定する
      noindex: ! Rails.env.production?,
      icon: [                    #favicon、apple用アイコンを指定する
                                 { href: image_url('favicon.ico') },
                                 { href: image_url('icon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'ArtVibe',
        title: '感想',
        description: '楽しかったです', 
        type: 'website',
        url: request.original_url,
        image: image_url('icon.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@ツイッターのアカウント名',
      }
    }
  end
end
