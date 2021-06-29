class ExpScoresController < ApplicationController
  def index
    @exp_scores = policy_scope(ExpScore)
  end

  def show
    @exp_score = @job.exp_scores
  end
end
