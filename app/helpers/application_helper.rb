module ApplicationHelper
  def get_gender_icon_class(gender)
    if gender == 'Female'
      'fa fa-female'
    else
      'fa fa-male'
    end
  end
end
