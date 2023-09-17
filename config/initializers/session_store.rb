# Active Recordテータストアを有効化
Rails.application.config.session_store :active_record_store
# セッションクッキーの基本設定
Rails.application.config.session = {
  key: '_railsample_session',
  httponly: true
}