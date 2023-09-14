class InfoController < ApplicationController
  def index
    render plain: app[:auther]
  end

  private

  def app
    LearnRailsApp::Application.config.appvar
  end

  # 開発中の懸念事項をメモする（'rails notes -a FIXME'で抽出できる）
  # TODO: あとで追加すべき不足している機能を記す
  # FIXME: 修正すべき壊れたコードを記す
  # OPTIMIZE: パフォーマンスに影響を与える最適化すべき箇所を記す

end
