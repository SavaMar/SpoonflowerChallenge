class PatternsController < ApplicationController
  def index
    @filter_params = filter_params
    @patterns = Pattern.search_by(@filter_params)
  end

  private

  def filter_params
    params.permit(:substrate, :q)
  end
end
