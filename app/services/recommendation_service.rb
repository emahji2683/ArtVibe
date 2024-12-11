
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

      これに基づいて、他のミュージアムやアート関連のおすすめを日本語で提案してください。
    PROMPT

    response = @client.chat(
      parameters: {
        model: "gpt-4",
        messages: [{ role: "system", content: "あなたは有能なレコメンデーションエンジンです。" },
                   { role: "user", content: prompt }],
      temperature: 0.7
      }
    )

    response.dig("choices", 0, "message", "content") || "おすすめが見つかりませんでした。"
  end
end
