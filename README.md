# _nerdy.lol_

---

A program that functions as a place for you and your friends to chat about nerdy things. 11/2/2020

By **Garrett P. Brown, A.J. Markow, Forrest Reiland, Alma Frankenstein**

## Description

A program that allows people to create text threads about nerdy subjects. These subjects are generated using API's related to popular fandoms, like "Lord of the Rings" or "Star Wars". 

## Setup/Installation Requirements

* _Open termnial._
* _Navigate to Desktop._
* _Type ```git clone https://github.com/alma-frankenstein/nerdy_lol.git``` in to command line and press ENTER.
* _Navigate to the root directory of the project in the terminal and type "code ." to view project in an editor like VS Code.
* _Run ```gem install bundler``` in command line to install bundler._
* _Run ```bundle install```
* _Change the username and password on lines 23 and 24 of config/database.yml to match yours, or comment those lines if your system doesn't require them
* _Run ``` rake db:seed```
* _Run ``` rake db:migrate:reset```
* _Run ```rake db:test:prepare```
* _To run program, type ```rails s``` into Terminal._
* _Go to favorite internet browser and type "localhost:3000" into the address bar.
* _to run via heroku, put [https://nerdy.lol/](https://nerdy.lol/) into your browser._

## Known Bugs

- _Currently no known bugs at this time._

## Support and contact details

_For support, please contact:_

- _Garrett Brown <garrettpaulbrown@gmail.com>_
- _Alma Frankenstein <a.q.frankenstein@gmail.com>_
- _A.J. Markow <aj@ajm.codes>_
- _Forrest Reiland <freiland@email.arizona.edu>_

## Technologies Used

- _Ruby on Rails_
- _VS Code_
- _Gem files: PG, Puma, Sass-rails. Uglifier, coffee-rails, turbolinks, jbuilder, devise, dotenv, bootsnap, jquery-rails, byebug, rspec-rails, launchy, pry, shoulda-matchers_

### License

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files the Software, to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2020 **_Garrett P. Brown, AJ Markow, Alma Frankenstein, Forrest Reiland_**
