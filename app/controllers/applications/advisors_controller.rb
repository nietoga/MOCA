class Applications::AdvisorsController < ApplicationController
  before_action :set_advisor, only: [:show, :accept, :reject]

  def index
    @advisors = Advisor.where(is_valid: nil)
  end

  def show
  end

  def accept
    @advisor.is_valid = true
    @advisor.save

    respond_to do |format|
      format.html {
        redirect_to applications_advisors_url,
        notice: 'Advisor was successfully accepted.'
      }
    end
  end

  def reject
    @advisor.is_valid = false
    @advisor.save

    respond_to do |format|
      format.html {
        redirect_to applications_advisors_url,
        notice: 'Advisor was successfully rejected.'
      }
    end
  end

  private
  def set_advisor
    @advisor = Advisor.find(params[:id])
  end
end