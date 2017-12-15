# == Schema Information
#
# Table name: users
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string           not null
#  email      :string           not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
end
