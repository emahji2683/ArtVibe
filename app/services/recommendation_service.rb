
require 'openai'

class RecommendationService
  def initialize(user)
    @user = user
    @client = OpenAI::Client.new(access_token: ENV['OPENAI_API_KEY'])
  end

  def recommend_museums
    liked_museums = @user.favorites.joins(:museum).pluck('museums.name')

    prompt = <<~PROMPT
    ユーザーが以下のミュージアムを「いいね」しました:
    #{liked_museums.join("\n")}

    以下の形式で他のおすすめミュージアムを3つJSON形式で返してください:
    [
      {
        "name": "ミュージアム名",
        "location": "所在地",
        "business_hours": "営業時間",
        "website_url": "公式サイトURL",
        "phone_number": "電話番号",
        "photo_url": "画像URL"
      }
    ]
    PROMPT

    response = @client.chat(
      parameters: {
        model: "gpt-4",
        messages: [{ role: "system", content: "あなたは有能なレコメンデーションエンジンです。" },
                   { role: "user", content: prompt }],
      temperature: 0.7
      }
    )

    ai_response = response.dig("choices", 0, "message", "content")
    JSON.parse(ai_response) rescue []
  end
end
