class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.all.order('title ASC')
    @random = Vocabulary.order("RAND()").limit(5)
    @html = Vocabulary.where(genre_id: 1)
    @css = Vocabulary.where(genre_id: 2)
    @ruby = Vocabulary.where(genre_id: 3)
    @javascript = Vocabulary.where(genre_id: 4)
    @linux = Vocabulary.where(genre_id: 5)
    @rspec = Vocabulary.where(genre_id: 6)
    @c = Vocabulary.where(genre_id: 7)
    @php = Vocabulary.where(genre_id: 8)
    @java = Vocabulary.where(genre_id: 9)
    @python = Vocabulary.where(genre_id: 10)
    @other = Vocabulary.where(genre_id: 11)
  end

  def new
    @vocabulary = Vocabulary.new
  end

  def create
    @vocabulary = Vocabulary.new(vocabulary_params)
    if @vocabulary.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @vocabulary = Vocabulary.find(params[:id])
  end

  def edit
    @vocabulary = Vocabulary.find(params[:id])
  end

  def destroy
    vocabulary = Vocabulary.find(params[:id])
    vocabulary.destroy
    redirect_to root_path
  end

  def update
    vocabulary = Vocabulary.find(params[:id])
    vocabulary.update(vocabulary_params)
    redirect_to root_path
  end

  private
  def vocabulary_params
    params.require(:vocabulary).permit(:title, :content, :genre_id)#.merge(user_id: current_user.id)
  end
end
