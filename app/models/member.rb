class Member < ApplicationRecord
  belongs_to :team

  def self.for_team(team)
    self.where(team: team)
  end
end
