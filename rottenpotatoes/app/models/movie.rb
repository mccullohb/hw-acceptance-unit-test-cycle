class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.same_directors movie_id
    director_name = Movie.find(movie_id).director
    if director_name == nil
      return nil
    end
    return Movie.where(director:director_name)
  end
  
end
