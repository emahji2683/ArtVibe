// app/javascript/application.js
import { Application } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"
import "./controllers";

const application = Application.start();
// LoadingIndicatorController を正しく登録する
import LoadingIndicatorController from "./controllers/loading_indicator_controller"; // 修正箇所
application.register("loading-indicator", LoadingIndicatorController); // 登録名も修正
