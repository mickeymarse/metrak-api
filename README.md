# Metrak API

_The API for my_ ~~My~~ personal media tracker. A.k.a. _a Letterboxd clone_. Although, with the possibility of tracking media other than movies.  
It is a project I chose to build in order to learn and practice my **Ruby** and **Ruby on Rails** skills.

It has been deployed using [Fly](https://fly.io)~~, but the deployed version still present _broken_ UI due to problems with the JavaScript code.
I used [Flowbite](https://flowbite.com/) as a UI component, which doesn't seem to be the most deployable library.~~

## Development

The original idea was to create a personal media tracker as I mentioned above by building a full stack app on Rails.  
However, I tried too many new things at once (as I do too often), and the result was a mess I was't really willing to refactor.  
Hence, I thought of navigating further into Rails docs and learn how to turn my existing app into an **API-only** one. It worked fine and I'm happy with it. Even if I'm planning to develop it further and improve it somehow.

Anyway, I will discuss the whole process better, as well as what went wrong, on a future blog post. So, add it to your feed reader or whatever you do if you're interested in that or in reading other random ramblings.

## API

There is a `media` table and a `thoughts` table. A media can be linked to many thoughts. The idea is that I don't want to share full-on reviews. Rather, bubble thoughts that came/come/will come up to my mind before/after/while enjoying the media selected.

### `GET /media/` [[try]](http://metrak.fly.dev/media)

Returns all the media in the db.

### `GET /media/[id]` [[try]](http://metrak.fly.dev/media/1)

Returns a specific media.

### `GET /media/[id]/thoughts/` [[try]](http://metrak.fly.dev/media/1/thoughts)

Returns all the thoughts for the selected media.

### `GET /media/[id]/thoughts/[id]` [[try]](http://metrak.fly.dev/media/1/thoughts/1)

Returns selected thought for selected media.

The `POST`, `PUT` and `DELETE` requests follow the usual pattern that you can infer from the requests above. However, you need to authenticate to perform them.

## Run locally

If you want to try it locally ~~with the _unbroken_ UI~~, download the repo and run:

```bash
$ bundle install
$ rails s
```

Then, you will need to set up a local **PostgreSQL** database with its user and password as well as creating user and password for the authentication process (which lets you create, update and delete).

## Future plans

- ~~&#9744; Rebuild UI using different component library (_not likely_)~~
  ##### ~~or~~
- &#9745; Turn it into an API-only app (_very likely_)
- &#9744; Add possibility to upload images.
- &#9744; Improve security
