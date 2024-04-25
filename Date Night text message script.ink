VAR has_butterfly = false
VAR has_pizza = false
VAR has_texted = 0

{has_texted > 0: -> questions }
~ has_texted = 1

Message from Alex: Hey! I'm excited to see you tonight!
Message from Alex: I hope you got your project finished!
Message from Alex: Did you ever decide what you're going to cook tonight? Do you remember what I like?

->questions

===questions

* {not has_butterfly} I completely forgot about that project... What was I supposed to do? 
-> project_goal
* {not has_butterfly && not has_pizza} I only have one more thing to do for my project 
-> whats_that
* {not has_pizza} Oh yeah! I promised I would cook for us, didn't I? Can you remind me what you like? 
-> food_hint

* {has_butterfly && not has_pizza} My project is finished, but I still need to cook. Can you remind me what you like? 
-> food_hint
* {has_pizza && not has_butterfly} I've finished dinner, I just need to do one more thing for my project. 
-> whats_that

* I'm on top of things! I'll text you back when I'm ready ;) 
-> hubris

=== project_goal

Message from Alex: It's for your biology class. You were supposed to catch native butterflies. Something about them only eating from particular flowers? I don't remember, it's your class lol

* Oh yeah, I have to catch one more butterfly... if only I could remember the right flower... 
-> books
* Oh yeah, thanks for reminding me. I'll get right on that! 
-> text_me_later

=== whats_that

Message from Alex: What's the last thing you have to do? I thought you had already caught all the butterflies.

* I have to catch one more butterfly. I have three out of four. 
-> text_me_later
* I have to get this flower to bloom and catch the butterfly, then I'll be done. 
-> text_me_later

=== books

Message from Alex: Try looking in one of those books you brought back from the library, silly! XD

* Okay, I'll check there and message you when I'm done. 
->text_me_later

=== text_me_later

Message from Alex: { I know you can do it! :) | Looking forward to hearing from you when you're finished! | Great! Hard at work as always! |  I'm looking forward to meeting later ;) }

* Thanks for the vote of confidence! ->END
* I'll finish just as fast as I can! ->END
* I'll text you when I'm done! ->END
* I won't keep you waiting too long! -> END
* I've got my eyes on the prize! -> END

=== food_hint

Message from Alex: I can't believe you forgot again... I'll give you some hints:
Message from Alex: I like food with a Mediterrainian flair
Message from Alex: Something round...
Message from Alex: A little saucy...
Message from Alex: Very cheesy! 


->END



=== hubris

Message from Alex: Ooh, on top of your game, eh? Great, I'm looking forward to our date tonight. I'll let you get to work ;)



    -> END
