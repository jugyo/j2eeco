# encoding: utf-8
class QsController < ApplicationController
  def index
    @qs = Q.recent.page(params[:page]).per(20)
  end

  def show
    @q = Q.find(params[:id])
  end

  def create
    q = Q.create(params[:q])
    if q.save
      redirect_to q_path(q)
    else
      redirect_to root_path, notice: 'エラー \(^o^)/'
    end
  end
end
