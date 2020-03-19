module ApplicationHelper
  def data_br(data_us)
    data_us.strftime("%d/%m/%Y")
  end

  def ambiente_rails
    if Rails.env.development?
      "Desenvolvimento"
    end
  end

end
