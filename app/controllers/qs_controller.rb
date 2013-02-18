class QsController < ApplicationController
  def index
    @qs = Q.recent.page(params[:page]).per(20)
  end

  def show
    @q = Q.find(params[:id])
  end

  def create
    q = Q.create(params[:q])
    unless q.save
      flash[:error] = 'failed to create'
    end

    redirect_to q_path(q)
  end
end
