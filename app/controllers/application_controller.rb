class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/phases/:id/popular" do
    phase = Phase.find(params[:id])
    popular=phase.posts.order("like DESC")
    newPopular=popular.where('created_at BETWEEN ? AND ?', 1.days.ago.utc, Time.now.utc)
    newPopular.to_json(include: :comments)
  end

  get "/phases/:id/oldest" do
    phase = Phase.find(params[:id])
    oldest=phase.posts.order("created_at ASC")
    oldest.to_json(include: :comments)
  end

  get "/phases/:id/newest" do
    phase = Phase.find(params[:id])
    newest=phase.posts.order("created_at DESC")
    newest.to_json(include: :comments)
  end

  delete '/posts/:id' do
    post = Post.find(params[:id])
    post.destroy
    post.to_json
  end

  post '/posts' do
    post = Post.create(
      content: params[:content],
      like: params[:like],
      phase_id: params[:phase_id]
    )
    post.to_json
  end

  post '/comments' do
    comment = Comment.create(
      content: params[:content],
      post_id: params[:post_id]
    )
    comment.to_json
  end

  patch '/posts/:id' do
    post = Post.find(params[:id])
    post.update(
      like: params[:like],
    )
    post.to_json
  end


end
