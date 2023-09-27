class Article < ApplicationRecord
  # titleに2が含まれるのものみ取得するスコープ
  scope :num2, -> {where('title like ?', '%2%')}
  # titleに2が含まれるのものを1件取得する
  scope :num2_limit1, -> {num2.limit(1)}
  # titleに2が含まれるのものをn件取得する
  scope :num2_limit, -> (n) {num2.limit(n)}

end
