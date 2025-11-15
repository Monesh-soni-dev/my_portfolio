Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root path
  root "pages#home"

  # Resume print route
  get 'resume/print', to: 'pages#resume_pdf', as: :resume_print

  # About page route
  get 'about', to: 'pages#about', as: :about
  get 'projects', to: 'pages#projects', as: :projects

  # Contact routes
  get 'contact', to: 'contacts#new', as: :contact
  post 'contact', to: 'contacts#create'
end
