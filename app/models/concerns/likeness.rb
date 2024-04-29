module Likeness
    extend ActiveSupport::Concern

    VALID_APPRECIATIONS = ['hatred', 'discomfort', 'indifferent', 'liked', 'tasty', 'loved']

    included do
        validates :appreciation, inclusion: { in: VALID_APPRECIATIONS }
    end

    def hatred?
        appreciation == 'hatred'
    end

    def discomfort?
        appreciation == 'discomfort'
    end

    def indifferent?
        appreciation == 'indifferent'
    end

    def liked?
        appreciation == 'liked'
    end

    def tasty?
        appreciation == 'tasty'
    end

    def loved?
        appreciation == 'loved'
    end
end
