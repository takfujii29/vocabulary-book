class VocabulariesController < ApplicationController
  def index
    @vocabularies = Vocabulary.all
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
