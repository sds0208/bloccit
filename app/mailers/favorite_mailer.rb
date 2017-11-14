class FavoriteMailer < ApplicationMailer
    default from:"sarahsantacruz86@gmail.com"
    
    def new_comment(user, post, comment)
        
        headers["Message-ID"] = "<comments/#{comment.id}@https://stormy-fjord-99619.herokuapp.com>"
        headers["In-Reply-To"] = "<post/#{post.id}@https://stormy-fjord-99619.herokuapp.com>"
        headers["References"] = "<post/#{post.id}@https://stormy-fjord-99619.herokuapp.com>"
        
        @user = user
        @post = post
        @comment = comment
        
        mail(to: user.email, bcc: "sarahsantacruz86@gmail.com", subject: "New comment on #{post.title}")
    end    
    
    def new_post(post)
        headers["Message-ID"] = "<posts/#{post.id}@https://stormy-fjord-99619.herokuapp.com>"
        headers["In-Reply-To"] = "<posts/#{post.id}@https://stormy-fjord-99619.herokuapp.com>"
        headers["References"] = "<posts/#{post.id}@https://stormy-fjord-99619.herokuapp.com>"
        
        @post = post
        
        mail(to: post.user.email, bcc: "sarahsantacruz86@gmail.com", subject: "You're following: #{post.title}")
    end    
end
