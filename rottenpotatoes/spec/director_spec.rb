require 'rails_helper'

describe MoviesController do
    it 'same_directors should return movie records with the same director as the one passed to it' do
        m1 = Movie.create(title: 'T1', director: 'D1')
        m2 = Movie.create(title: 'T2', director: 'D1')
        expect(Movie.same_directors(m1.id)).to eq([m1, m2])
    end
    
    it 'return "nil" if a movie has no director' do
        m1 = Movie.create(title: 'T1')
        expect(Movie.same_directors(m1.id)).to eq(nil)
    end
    
    it 'should not raise an error if same_directors is called' do
        m1 = Movie.create(title: 'T1')
        expect{Movie.same_directors(m1.id)}.not_to raise_error
    end
    
end