class PagesController < ApplicationController
  def home
    # simple landing page to exercise layout/header/footer
  end

  def resume_pdf
    # Render a self-contained, print-friendly resume view (no application layout)
    render layout: false
  end

  def about
  end

  def projects
  end
end
