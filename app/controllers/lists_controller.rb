class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]
  
  def index
    @lists = List.all
    # debugging
    # 1: raise @lists.inspec
    # 2: logger.debug "@lists == #{@lists.inspect}"
    # check logs/development
    @movies_count = Bookmark.count
    # avg_rating = list.reviews.sum(:rating).to_f / list.reviews.count.to_f 
    # @avg_rating = average_rating(List.all)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
     else
      render :new
    end
  end

  def show
    @bookmark = Bookmark.new
    @review = Review.new(list: @list)
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end

  # def average_rating(lists)
  #   lists.reviews.each do |review|
  #     X
  #   end
  # end
end
