
import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["indicator"]; // ローディングインジケーターのターゲットを定義

  connect() {
    console.log("LoadingIndicatorController connected!");
  }

  show() {
    this.indicatorTarget.style.display = "block"; // インジケーターを表示
  }

  hide() {
    this.indicatorTarget.style.display = "none"; // インジケーターを非表示
  }
}
