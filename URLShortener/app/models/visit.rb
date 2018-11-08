# == Schema Information
#
# Table name: visits
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  url_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  belongs_to :find_user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :find_url,
    primary_key: :id,
    foreign_key: :url_id,
    class_name: :ShortenedUrl
end
