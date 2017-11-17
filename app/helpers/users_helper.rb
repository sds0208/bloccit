module UsersHelper
    def user_has_zero_posts_or_comments?
        current_user.posts.count == 0 && current_user.comments.count == 0
    end
    
    def user_has_zero_favorites?
        current_user.favorites.count == 0
    end    
end
