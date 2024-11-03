## サービス概要

<aside>

💡どんなサービスなのかを３行で説明してください。

</aside>

ユーザーのおすすめの美術館を紹介するアプリ。美術館に関する体験・基本情報を詳細に共有し、新たな美術館を訪れる動機付けを提供する。機能としては、メイン写真1枚と複数のサブ写真で構成されたカード形式で投稿・編集でき他のユーザーの投稿も閲覧可能。また、美術館の多面的なレビュー(例：価格、立地)、AIによる美術館レコメンド機能、特定の美術館付近のカフェの情報等も提供する。各種機能の詳細検討にあたっては、美術館に関する統計を活用しており一定程度の妥当性のあるアプリ設計となっている。

## このサービスへの思い・作りたい理由

<aside>

💡サービスの題材となるものに関してのエピソードがあれば詳しく教えてください。
サービスを思いつくにあたって元となる思いがあれば詳しく教えてください。

</aside>

- 自身の趣味として、美術館をよく訪れている中で訪れている美術館の情報を集約して、記録・共有したいという思いがあった。
- 自分がよく利用するサービスにGoogle Mapがあるが、あくまで地図中心のサービスであるため、美術館の詳細情報に特化したアプリを作りたいと感じたから。
- 自身が開催したイベントで、人が好きな曲を連続して聴く機会があり、その経験がとても楽しかったため、テーマを音楽から美術館に変えても同じように楽しめるのではないかと考えたから。その根拠としては、友人からおすすめの美術館を過去に何度も紹介してもらった経験がありいずれの場所も非常に楽しめため。
- 一方で、美術館の立地状況が現地でしか確認できない、周辺のカフェ等を別途調べなければならない等、私自身の個人的なニーズに訴求したサイトとうが存在しないところに関しても不満がああった。

## ユーザー層について

<aside>

💡決めたユーザー層についてどうしてその層を対象にしたのかそれぞれ理由を教えてください。

</aside>

ユーザー層は美術館を多く訪れる人とする。美術館巡りを趣味としている人を2~3ヶ月に一回以上美術館を訪れている人と仮定すると約10％(iMiリサーチバンク調査)と少ない。このことから、ニッチ層である美術館好きののニーズに訴求したアプリを作成することで、大手のレビューサービス等と差別化が図れると感じたから。このニーズの詳細は、公的統計である国立アートリサーチセンターの統計調査を根拠に推定する。

![image](https://github.com/user-attachments/assets/9c44b221-c723-4478-bff4-8a12da6364b4)

## サービスの利用イメージ

<aside>

💡ユーザーがこのサービスをどのように利用、それによってどんな価値を得られるかを簡単に説明してください。

</aside>

- 多様な方の訪れた美術館を知ることにより、行ったことのない美術館への好奇心ひいては新たな場所との出会いに繋げる。具体的には、各ユーザーの投稿したカードを参照し、いいね等をつけられる。
- 自分が好きな美術館を投稿することにより、他ユーザーから共感を得る。具体的には、メイン画像(1枚)、サブ画像(複数)、場所に関わる紹介文、基本情報(住所、ジャンル等)の情報を含むカードを投稿する。
- レビューの評価軸を複数設定することで、美術館を多面的な観点で評価できるようにする。この評価軸の項目については、以下に示す統計情報を活用し、一定程度の妥当性担保する。
- 統計情報より、美術館来訪に際してカフェ等を訪れたいというニーズが一定程度存在することから、特定の美術館の周辺のカフェ情報を合わせて表示できるようにする。
- 美術館の来訪実績・投稿へのいいね実績を生成AIに入力・出力することにより、個人の嗜好に合わせた美術館を提案する。

## ユーザーの獲得について

<aside>

💡想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。

</aside>

- 想定しているユーザーは、美術館を多く巡るような人。
- このようなユーザーは、多くの美術館の訪問経験から人におすすめできるようなスポットを知っている可能性があり、特に美術館好きの間で広めたいと感じていると考えている。また、場所にも強い思い入れを持っていると考えている。これらのことから、場所の外観写真をメイン写真＋サブ写真で詳しくイメージがわかるようにして、このようなユーザーの強い特定の場所へのこだわりを投稿(カード)に反映できるように工夫する。
- サブ写真でその場所が持つ固有イメージを投稿できる。美術館であれば、チラシ、付帯施設(カフェ、ショップ)等である。これらの固有イメージを閲覧することにより、美術館に関するイメージがより湧きやすい状況とする。
- 評価軸を公的統計による妥当性が担保されたものにすることで、よりユーザーの求める評価を確認することができる。
- 施設周辺のカフェを提案することにより、カフェを探す手間を低減する。
- AIのレコメンド機能により次に訪れる美術館の案を提供することにより、美術館探しの効率化を図る。

## サービスの差別化ポイント・推しポイント

<aside>

💡似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。

</aside>

- 前提として、各種レビューサイトと異なり、不特定多数ではなく美術館好きを対象としていることから、あまり興味がない人が利用せず、精度の高い評価(いいね)が得られる。このため、美術館好きのためのビューサイトとトップページに題することで、一定のユーザーフィルタリングを行う。
- 展示内容の質、入場料の価値、展示の規模、施設の快適さなど、美術館に関する多角的な評価軸等を設けることで、訪問者が具体的な情報を得やくする。なお、現段階でこの評価軸に関しては、案であり美術館に関する意識調査 （関東エリア)の内、「美術館に行くとき、どのようなことを重視しますか」の質問内容を用いて作成するものとする。
- 美術館ごとの入場料を比較し、他の美術館との料金の差異や、費用対効果を表示する機能を追加することで、安価な美術館も示され高頻度で美術館に通うユーザーのコストカットを行う。また、一定程度存在すると考えられる美術にあまり興味のないユーザーへの美術館来訪への誘因材料ともする。これは、美術館に行かない理由（出典：iMiリサーチバンク調査）として、24.5%の回答者が「入場料が高い」と答えている結果が出ていることから、「入場料が安い」美術館のであれば当該箇所を訪問するユーザーも一定程度いると考えられることによる。
- 「現代アート」「古典絵画」「彫刻」など、テーマごとに美術館をランキング形式で紹介するコンテンツを提供することで、ユーザーが好みの美術館を簡単に見つけられるようにする。
- 美術館巡りにあたって、「美術館に導入した方が良いと思う施設・サービスはどれですか」の回答結果を以下に示す。回答項目のうち、「気軽にくつろげるカフェ」と答えた者が全体の66.1%(全項目中1位)を占めている。このことから、美術鑑賞前後でのカフェへの来訪したいとのニーズがあることが伺える。一方で、美術館事態へのカフェの導入は当該施設の判断になるので、その代替手段として本アプリでは施設周辺のカフェを提案する機能も実装する。

![image](https://github.com/user-attachments/assets/7dd1b9e9-3e21-4b70-9508-a5ee65ce0287)
美術館に関する意識調査 （関東エリア)、美術館の施設・サービス「導入した方が良いと思う施設・サービスはどれですか」2024年, 6月

![image](https://github.com/user-attachments/assets/e1abe6e1-4b9d-4d73-803c-578a83121ffa)
美術館に関する意識調査 （関東エリア)、美術館に重視すること「美術館に行くとき、どのようなことを重視しますか」2024年, 6月

![image](https://github.com/user-attachments/assets/58b1a9a3-553f-4838-85ea-bc2adb25b26c)
美術館に行かない理由（出典：iMiリサーチバンク）

【具体例】
Artagenda(美術館レビューサイト)
・写真投稿はできない。
・評価軸は一つ(⭐️1~5)。
・評価軸が評価者の主観である。
・入館料の比較はできない。
・展示会のテーマ(例：現代アート、書道等)が不明。
https://www.artagenda.jp/exhibition/detail/10330

Google map
・評価軸は一つ(⭐️1~5)。
・評価軸が評価者の主観である。
・入館料の比較はできない。
・展示会のテーマ(例：現代アート、書道等)が不明。

## 機能候補

## 機能の実装方針予定


<aside>

💡現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。

</aside>

<aside>

💡一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。

</aside>

使用する機能の案と対応する技術(使用するAPI等)を記載している。

MVPリリース時

| カテゴリー | 使用技術 |
| --- | --- |
| フロントエンド | TailwindCSS, DaisyUI, JavaScript, Hotwire |
| バックエンド | Ruby 3.1.2, Ruby on Rails 7.1.3 |
| インフラ | Render , Cloudinary |
| データベース | PostgreSQL |
| API | 詳細は以下の機能表に記載 |
| CI/CD | GithubActions |
| 開発環境 | Docker |

機能表(MVPリリース時)

| 機能 | 使用する技術 | 具体の使用場面 |
| --- | --- | --- |
| アカウント登録 | Devise | 新規ユーザーの作成、 ログイン・ログアウト時 |
| オートコンプリート機能 | Google Places API | 場所カード作成時, 検索時 |
| 非同期通信 | Hotwire(Turbo, Stimulus) | 評価・いいね機能、CRUD操作 |
| カードの検索機能 | Runsuck | 場所カードの検索時 |
| 画像投稿機能 | ActiveReacord, Minimagik | カード投稿時 |

本リリース時

機能表(本リリース時)

| 機能 | 使用する技術 | 具体の使用場面 |
| --- | --- | --- |
| 動的OGP | Gem Meta-tags | Twitter等のSNSへの共有 |
| 生成AIによるレコメンド | OpenAI API | 場所カードのいいね実績からのレコメンド時 |
| ランキングシステム、カフェの表示機能 | - | ユーザーごとのランキング表示(場所の投稿数、投稿クオリティ) |
| 地図上への表示 | Google Geocoding API、Google Maps API | 場所カード(詳細)閲覧時 |

https://ncar.artmuseums.go.jp/upload/3cb4784a26010a4990e34f5aadb2a9f448ba6ce5.pdf

https://www.itmedia.co.jp/makoto/articles/1011/10/news044.html
