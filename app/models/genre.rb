class Genre < ActiveRecord::Base
    has_many :movies

    # [].build
    # movies.create
    # movies.reload

    # def movie_ids=(movie_ids)
    #     movie_ids.each do |id|
    #         Movie.find(id).genre = self
    #     end
    # end

    # def movies
    #     Movie.where('genre_id = ?', self.id)
    # end

end