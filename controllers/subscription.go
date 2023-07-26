package controllers

import (
	"net/http"

	"github.com/dhinogz/sub-control/models"
)

type Subscriptions struct {
	Templates struct {
		New Template
	}
	SubscriptionService *models.SubscriptionService
}

// New subcription from current user
func (s Subscriptions) New(w http.ResponseWriter, r *http.Request) {
	var data struct {
		Name string
	}
	s.Templates.New.Execute(w, r, data)
}

// Process new user sign up
// func (u Users) Create(w http.ResponseWriter, r *http.Request) {
// 	var data struct {
// 		Email    string
// 		Password string
// 	}
// 	data.Email = r.FormValue("email")
// 	data.Password = r.FormValue("password")
// 	user, err := u.UserService.Create(data.Email, data.Password)
// 	if err != nil {
// 		if errors.Is(err, models.ErrEmailTaken) {
// 			err = errors.Public(err, "That email address is already in use.")
// 		}
// 		u.Templates.New.Execute(w, r, data, err)
// 		return
// 	}
// 	session, err := u.SessionService.Create(user.ID)
// 	if err != nil {
// 		fmt.Println(err)
// 		// TODO: long term a warning should be shown stating failed sign in
// 		http.Redirect(w, r, "/signin", http.StatusFound)
// 		return
// 	}
// 	setCookie(w, CookieSession, session.Token)
// 	http.Redirect(w, r, "/home", http.StatusFound)
// }
