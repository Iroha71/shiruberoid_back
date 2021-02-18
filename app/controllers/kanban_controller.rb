class KanbanController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @kanban = Kanban.new(get_kanban_params())
    @kanban.save!

    render status: :ok, json: @kanban
  end

  private
    def get_kanban_params()
      params.require(:kanban).permit(:title, :desc, :notify_at, :category_id)
      .merge(user_id: @current_user.id)
    end
end
