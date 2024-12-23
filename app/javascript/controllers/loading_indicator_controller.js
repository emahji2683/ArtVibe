// app/javascript/controllers/loading_indicator_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["indicator", "recommendationsFrame"];

  connect() {
    this.hideLoader(); // 初期状態ではロードインジケーターを隠す
  }

  async loadData(event) {
    this.showLoader();  // ロードインジケーターを表示

    try {
      // Rails コントローラーの load_content メソッドを呼び出す
      const response = await fetch('/recommendations/load_content', {
        method: 'GET',
        headers: {
          'Accept': 'text/vnd.turbo-stream.html', // Turbo Stream のレスポンスを期待
        }
      });

      if (!response.ok) {
        throw new Error('Failed to load content');
      }

      // Turbo Stream レスポンスを取得して処理
      const turboStream = await response.text();
      document.body.innerHTML = turboStream;  // 画面を更新

    } catch (error) {
      console.error('Error loading recommendations:', error);
    } finally {
      this.hideLoader();  // ロードインジケーターを非表示
    }
  }

  showLoader() {
    this.indicatorTarget.classList.remove("hidden"); // ロードインジケーターを表示
  }

  hideLoader() {
    this.indicatorTarget.classList.add("hidden"); // ロードインジケーターを非表示
  }
}
