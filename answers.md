# Q0: Why is this error being thrown?
This error is being thrown because we did not have a Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon are appearing through a .sample method to randomly select one pokemon to show. Common factor is that they're all starting pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It calls the patch method that routes to our catch method.

# Question 3: What would you name your own Pokemon?
Bro-basaur.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path to the redirect_to, it needed a trainer object and I used current_trainer.id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The flash[:error] creates a pop-up of text alerting the user that something went wrong.
It is able to do this because of the layout defined in 'application.html.erb', flash just has to render the already defined errors.

# Give us feedback on the project and decal below!
I liked the project a lot, I didn't think it was too hard and felt that I learned a lot.

# Extra credit: Link your Heroku deployed app
