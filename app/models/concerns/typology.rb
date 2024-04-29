module Typology
    extend ActiveSupport::Concern

    VALID_TYPES = ['movie', 'show', 'comic', 'book', 'game', 'zine']

    included do
        validates :type, inclusion: { in: VALID_TYPES }
    end

    class_methods do
        def movie_count
            where(type: 'movie').count
        end
    end

    class_methods do
        def show_count
            where(type: 'show').count
        end
    end

    class_methods do
        def comic_count
            where(type: 'comic').count
        end
    end

    class_methods do
        def book_count
            where(type: 'book').count
        end
    end

    class_methods do
        def game_count
            where(type: 'game').count
        end
    end

    class_methods do
        def zine_count
            where(type: 'zine').count
        end
    end


    def movie?
        type == 'movie'
    end

    def show?
        type == 'show'
    end

    def comic?
        type == 'comic'
    end

    def book?
        type == 'book'
    end

    def game?
        type == 'game'
    end

    def zine?
        type == 'zine'
    end
end
