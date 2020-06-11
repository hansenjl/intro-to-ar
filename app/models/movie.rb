class Movie < ActiveRecord::Base
    belongs_to :genre  #macro
    has_many :roles
    has_many :actors, through: :roles

    # build_genre
    # create_genre
    # reload_genre

end