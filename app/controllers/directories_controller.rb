# frozen_string_literal: true

class DirectoriesController < ApplicationController

  # GET /directories
  def index
    @directories = Directory.roots.all
  end

  # GET /directories/:id
  def show
    directory
  end

  # GET /directories/:id/edit
  def edit
    directory
  end

  # GET /directories/new
  def new
    @directory = Directory.new
  end

  # POST /directories
  def create
    Directory.create(create_params)
    redirect_back fallback_location: root_path
  end

  # PUT /directories/:id
  def update
    directory.update(update_params)
    redirect_to action: :index
  end

  # GET /directories/:id/delete
  def delete
    directory.destroy_all
    redirect_to action: :index
  end

private

  def directory
    @directory ||= Directory[params[:id].to_i]
  end

  def create_params
    directory_params = params.require(:directory).permit(:name, :path).to_h.symbolize_keys
    directory_params[:path] = if directory_params[:path].present?
      JSON.parse(directory_params[:path])
    else
      []
    end
    directory_params
  end

  def update_params
    params.require(:directory).permit(:name)
  end
end
