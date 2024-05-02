module Typology
    extend ActiveSupport::Concern

    VALID_FORMATS = ['movie', 'show', 'comic', 'book', 'game', 'zine', 'podcast']

    included do
        validates :format, inclusion: { in: VALID_FORMATS }
    end

    class_methods do
        def movie_count
            where(format: 'movie').count
        end
    end

    class_methods do
        def show_count
            where(format: 'show').count
        end
    end

    class_methods do
        def comic_count
            where(format: 'comic').count
        end
    end

    class_methods do
        def book_count
            where(format: 'book').count
        end
    end

    class_methods do
        def game_count
            where(format: 'game').count
        end
    end

    class_methods do
        def zine_count
            where(format: 'zine').count
        end
    end

    class_methods do
        def podcast_count
            where(format: 'podcast').count
        end
    end


    def movie?
        format == 'movie'
    end

    def show?
        format == 'show'
    end

    def comic?
        format == 'comic'
    end

    def book?
        format == 'book'
    end

    def game?
        format == 'game'
    end

    def zine?
        format == 'zine'
    end

    def podcast?
        format == 'podcast'
    end
end
