puts "🌱 Seeding spices..."

# Seed your database here
Phase.create(number:"One")
Phase.create(number:"Two")
Phase.create(number:"Three")
Phase.create(number:"Four")
Phase.create(number:"Five")

# Post.create(content:"React is not reacting to me", phase_id:3, like:4)
# Post.create(content:"Oh Ruby, can you love me back?", phase_id:3, like:9)
# Post.create(content:"Pool was fun! Let's go again!", phase_id:3, like:14)
# Post.create(content:"BE HAPPY!", phase_id:1, like:25)
# Post.create(content:"RIP HOPPER", phase_id:3, like:44)
Post.create(content:"Love it here", phase_id:3, like:44)


# Comment.create(content:"NPM Install!!!", post_id:1)
# Comment.create(content:"NPM Start!!!!!!", post_id:1)
# Comment.create(content:"It's because of Emerald", post_id:2)
# Comment.create(content:"Ruby is a strong independent woman who needs do frontend man", post_id:2)
# Comment.create(content:"NyiNyi secretly good at everything", post_id:3)
# Comment.create(content:"Sinclair's left English was fire", post_id:3)
# Comment.create(content:"Agreed!", post_id:3)
# Comment.create(content:"I AM HAPPY!", post_id:4)
# Comment.create(content:"I will be in 6 weeks", post_id:4)
# Comment.create(content:"Maybe if I get a job", post_id:4)
# Comment.create(content:"Can we move for Phase 4?", post_id:5)
# Comment.create(content:"Justin!!", post_id:5)



puts "✅ Done seeding!"
