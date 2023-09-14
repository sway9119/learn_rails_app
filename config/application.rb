require_relative "boot"

require "rails/all"


# config配下のapplication.rbは、すべての環境の設定ファイル。
# 環境ごとに変更する場合、environments配下に＜環境名＞.rbファイルを編集する。

Bundler.require(*Rails.groups)

module LearnRailsApp
  class Application < Rails::Application
    config.load_defaults 7.0
    config.time_zone = 'Tokyo' # アプリケーションやActiveRecordで利用するデフォルトのタイムゾーンを設定。デフォルトは'UTC'
    config.appvar = { auther: 'test auther' }
  end
end
