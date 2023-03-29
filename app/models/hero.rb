class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

    def as_json(options = {})
        super(options.merge(include: :powers))
        .merge(powers: powers.uniq.as_json)
    end

end

