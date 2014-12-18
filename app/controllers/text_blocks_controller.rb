class TextBlocksController < ApplicationController
  before_action :set_text_block, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @text_blocks = TextBlock.all
    respond_with(@text_blocks)
  end

  def show
    respond_with(@text_block)
  end

  def new
    @text_block = TextBlock.new
    respond_with(@text_block)
  end

  def edit
  end

  def create
    @text_block = TextBlock.new(text_block_params)
    @text_block.save
    respond_with(@text_block)
  end

  def update
    @text_block.update(text_block_params)
    respond_with(@text_block)
  end

  def destroy
    @text_block.destroy
    respond_with(@text_block)
  end

  private
    def set_text_block
      @text_block = TextBlock.find(params[:id])
    end

    def text_block_params
      params.require(:text_block).permit(:name, :body, :position)
    end
end
