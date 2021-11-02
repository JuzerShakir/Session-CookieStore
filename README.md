# Project: Session & Cookie
*A responsive Rails webapp that uses cookies to maintain a session with clients' browsers.*

<div align="center">
  <img src="project_logo.png" />
</div>

----

## ❗ Objectives
This web-app must accomplish the following:
- [x] Use PostgreSQL database which stores email and password of a visitor...
- [x] Only valid email formats is allowed and it should be unique.
- [x] Use BCrypt gem to store secure hash password and it should be atleast 6 to 36 characters long.
- [x] Show validation error messages (if any) to signing in visitors.
- [x] Create Session using CookieStore as soon as visitors sign up.
- [x] Show different homepage content for signed in and non-signed in visitors.
- [x] If visitor logs in with an email that doesn't exist in database then redirect them to signup page.
- [x] If visitor signs up with an email that exist in our database then redirect them to sign in page.
- [x] Show appropraite flash messages whereever necessory like, new sign up, sign in, logout, etc.
- [x] Show visitor sign up count to both logged out and logged in visitors.
- [x] Redirect logged in visitor to homepage if he tries to visit log in or signup page.
- [x] Build a responsive site using bootstrap.
- [x] Show logged in visitors ways of destroying session.

----

## 💎 Required Gems

**This project was built on Ruby version *2.7.2*.**

Following important gems were installed in these versions:

|  **Gem Names**  |         **Gem**         | **Version** |                      **Use**                     |
| :------------:  |     :------------:      | :---------: |                    :---------:                   |
|      Rails      |        _'rails'_        |  **6.1.4.1**  |    *Use for executing and rendering web-app*     |
|   Postgresql    |          _'pg'_         |  **1.2.3**  | *Use postgres as the database for Active Record* |
|    Bootstrap    |      _'bootstrap-sass'_      |  **3.4.1**  |                *For SCSS Styling*                 |
|    BCrypt       |        _'bcrypt'_       |  **3.1.16** | *Secure hash algorithm for safely storing passwords* |


----

## ⚙️ Setting up a PostgreSQL user

If you don't have a user set on postgres, here's how to set new user:

```bash
sudo -u postgres createuser -s [username]
```
To set a password for this user, log in to the PostgreSQL command line client:
```bash
sudo -u postgres psql
```
Enter the following command to set the password:
```bash
\password your_password
```
Enter and confirm the password. Then exit the PostgreSQL client:
```bash
\q
```

-----

## 📋 Execution

Run the following commands to execute locally:

The following will install required version of ruby (make sure [rvm is installed](https://rvm.io/rvm/install).)

```bash
rvm use 2.7.2
```
```bash
git clone git@github.com:JuzerShakir/Session-CookieStore.git
```
```bash
cd Session-CookieStore
```
```bash
bundle install
```

### 💡 Imp Note:
> The `config/database.yml` has been added to `.gitignore` but a similar file `config/database.yml.clone` exists in its place. You will need to add your own postgresql username and password in the file. And then rename the file by:

```bash
mv config/database.yml.clone config/database.yml
```
```bash
rails db:setup
```
```bash
rails s
```

To see this web-app up and running without executing above commands locally,
I have deployed it on [Heroku](https://session-cookie-store.herokuapp.com/).

-----

![](https://visitor-badge-reloaded.herokuapp.com/badge?page_id=juzershakir.Session-CookieStore&color=000000&lcolor=000000&style=for-the-badge&logo=Github)


<a href="https://wakatime.com/@JuzerShakir/projects/owabcydqge?start=2021-10-26"><img src="https://wakatime.com/badge/user/ccef187f-4308-4666-920d-d0a9a07d713a/project/680d7b23-8d37-49c4-9f2e-38200088cb4b.svg" alt="wakatime"></a>
