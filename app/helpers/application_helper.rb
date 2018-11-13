module ApplicationHelper
  def getHomeRoute
    if current_user.kind == 0
      return welcome_super_admin_path
    elsif current_user.kind == 1
      return welcome_admin_path
    elsif current_user.kind == 2
      return student_path(id: current_user.student_id)
    elsif current_user.kind == 3
      return advisor_path(id: Advisor.where(student_id: current_user.student_id).first)
    end
  end
end
