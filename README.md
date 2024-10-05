
## サービス概要

<aside>

💡どんなサービスなのかを３行で説明してください。

</aside>

ユーザーのおすすめの場所を紹介するアプリ。場所に関する体験を共有し、新たな場所を訪れる動機付けを提供する。個別の場所は、メイン写真1枚と複数のサブ写真で構成されたカード形式で投稿・編集でき、他のユーザーの投稿も閲覧可能。

## このサービスへの思い・作りたい理由

<aside>

💡サービスの題材となるものに関してのエピソードがあれば詳しく教えて。
  サービスを思いつくにあたって元となる思いがあれば詳しく教えてください。

</aside>

- 自分がよく利用するサービスにGoogle Mapがあるが、あくまで地図中心のサービスであるため、場所の詳細情報に特化したアプリを作りたいと感じたから。
- 自身が開催したイベントで、人が好きな曲を連続して聴く機会があり、その経験がとても楽しかったため、テーマを音楽から場所に変えても同じように楽しめるのではないかと考えたから。

## サービスの利用イメージ

<aside>

💡ユーザーがこのサービスをどのように利用、それによってどんな価値を得られるかを簡単に説明してください。

</aside>

- 多様な方の好きな場所を知ることにより、新たな場所への好奇心ひいては新たな場所との出会いに繋げる。具体的には、各ユーザーの投稿したカードを参照し、いいね等をつけられる。
- 自分が好きな場所を投稿することにより、他ユーザーから共感を得る。具体的には、メイン画像(1枚)、サブ画像(複数)、場所に関わる紹介文、基本情報(住所、ジャンル等)の情報を含むカードを投稿する。

## ユーザーの獲得について

<aside>

💡想定したユーザー層に対してそれぞれどのようにサービスを届けるのか現状考えていることがあれば教えてください。

</aside>

- 想定しているユーザーは、飲食店や特定のスポットを多く巡るような人であり、その中でもこの趣味に重きを置いている人とする。
- このようなユーザーは、多くの訪問経験から人におすすめできるようなスポットを知っている可能性があり、広めたいと感じていると考えている。また、場所にも強い思い入れを持っていると考えている。これらのことから、場所の外観写真をメイン写真＋サブ写真で詳しくイメージがわかるようにして、このようなユーザーの強い特定の場所へのこだわりを投稿(カード)に反映できるように工夫する。
- サブ写真でその場所が持つ固有イメージを投稿できる。例えば、料理店ならば料理。美術館であれば、チラシ、展示会の絵等。
- 一方で、特定ユーザーからの極端な評価によるモチベーションの低下を防ぐために、各場所の投稿を星等の程度と評価とせず、いいね機能とする。

## サービスの差別化ポイント・推しポイント

<aside>

💡似たようなサービスが存在する場合、そのサービスとの明確な差別化ポイントとその差別化ポイントのどこが優れているのか教えてください。
独自性の強いサービスの場合、このサービスの推しとなるポイントを教えてください。

</aside>

- 各種マップアプリ：位置情報の表示を最後にして、場所に付帯したその他の情報(外観・内観・サービス等)の情報を優先的に表示する。
- 各種レビューサービス：本サービスのいいねシステムはレーティングではなくあくまでいいね数とする。これはその他レビューサービスのレーティングでは、特定の評価者が極端な評価(⭐️1等)をつけることで、オーナーが不利益を被るがことあることによる。いいね数で評価を行うことにより、極端な評価をつけることができなくなる。
- 写真投稿系SNS：場所の情報を表示をユーザー単位ではなく場所単位にすることによって、場所の情報をにフォーカスしてユーザーが閲覧できるようにする。

## 機能候補

<aside>

💡現状作ろうと思っている機能、案段階の機能をしっかりと固まっていなくても構わないのでMVPリリース時に作っていたいもの、本リリースまでに作っていたいものをそれぞれ分けて教えてください。

</aside>

| 機能 | 使用する技術 | 具体の使用場面 |
| --- | --- | --- |
| 動的OGP | Gem Meta-tags | Twitter等のSNSへの共有 |
| 生成AIによるレコメンド | OpenAI API | 場所カードのいいね実績からのレコメンド時 |
| ランキングシステム | - | ユーザーごとのランキング表示(場所の投稿数、投稿クオリティ) |
| 画像投稿機能 | ActiveReacord, Minimagik | カード投稿時 |

## 機能の実装方針予定

<aside>

💡一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。 

</aside>

| 機能 | 使用する技術 | 具体の使用場面 |
| --- | --- | --- |
| アカウント登録 | Devise | 新規ユーザーの作成, ログイン, ログアウト時 |
| オートコンプリート機能 | Google Places API  | 場所カード作成時, 検索時 |
| 地図上への表示 | Google Geocoding API, Google Maps API | 場所カード(詳細)閲覧時 |
| 非同期通信 | Hotwire(Turbo, Stimulus) | いいね機能, CRUD操作 |
| カードの検索機能 | Runsuck | 場所カードの検索時 |
