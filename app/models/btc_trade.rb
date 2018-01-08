class BtcTrade < ApplicationRecord
  scope :last_bought, ->  {where(kind: 1).last}
  scope :last_sold,   ->  {where(kind: 0).last}
end
 