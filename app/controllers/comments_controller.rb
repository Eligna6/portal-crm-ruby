class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_prospect

    def create
        @prospect = Prospect.find(params[:prospect_id])
        @comment = @prospect.comments.create(comment_params)
    
            if @comment.save
                flash[:notice] = "La conversación fue añadida con éxito"
                redirect_to prospect_path(@prospect)
            else
                flash[:alert] = "La conversación no pudo ser añadida"
                redirect_to prospect_path(@prospect)
            end
    end

    def destroy
        @comment = @prospect.comments.find(params[:id])
        @comment.destroy
        redirect_to prospect_path(@prospect)
    end

    def update
        @comment = @prospect.comments.find(params[:id])
        
        respond_to do |format|
            if @comment.update(comment_params)
                format.html { redirect_to prospect_url(@prospect), notice: "El comentario fue actualizado exitosamente"}
            else
                format.html { redirect_to prospect_url(@prospect), alert: "El comentario fue actualizado exitosamente"}
            end
        end
    end

    private

    def set_prospect
        @prospect = Prospect.find(params[:prospect_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end

end
