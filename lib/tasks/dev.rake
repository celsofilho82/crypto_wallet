namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Drop database") { %x(rails db:drop) }
      show_spinner("Create database") { %x(rails db:create) }
      show_spinner("Migrate database") { %x(rails db:migrate) }
      show_spinner("Populate database") { %x(rails db:seed) }
    else
      puts "Você não está no ambiente de desenvolvimento"
    end
  end

  private

  def show_spinner(msg_start)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success('(successful)')
  end
end
