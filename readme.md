
<p align="center">
    Work assignment proposed by <a href="https://starweb.se/">Starweb</a>.<br>
</p>
<p align="center">
    Demo available at https://starweb-test.dubandubois.com
</p>

## Original instructions

In order to review your knowledge in backend PHP development, which is what we’re passionate about, I’m sending over a simple but at the same time complex work test.

The task is to build a micro framework from scratch in PHP. You can be inspired by different existing frameworks, but the solution must not use any libraries or code that is not yours. It also has to be slim (don’t add code that is not used in the CRUD demo). You may not use pre-written parts from the Internet, or copy from established frameworks, etc.

** When we usually write code, we, of course, use a large number of different libraries. But for this work test we would rather see your skills as a developer in order to see what trade-offs you do, how you think about architecture and so on. Some frameworks we ourselves think are really good are Symfony and Laravel. **

This will undoubtedly require some work and we really hope that you will accept the challenge! Regardless, please get back to me regarding if you intend to complete the test or not. Below are the requirements:
- Make a time estimate of how long you think it will take you (in hours) and mail back before you begin implementation.
- We want everything to be coded "by hand". Comments and function / variable names should be in English.

The solution will have a simple GUI, but will be relatively complex in backend. We want you to produce 2 pages for a simple CRUD system:

**Page #1 - The list**

List all the posts that are stored in a DB.
- The list should contain both a title and content (long description) per post - Each post should be editable
- The page should also contain an “Add new” button

**Page #2 - Edit/Add page**

The page should contain a simple form with one input field for title and one textarea for content (the long description).
- When you click “Save” the fields should be verified by JavaScript:
  - The “title” must not contain any numbers
  - The “content” must not contain any HTML
  - Both fields must not be empty (both are required)

Backend
- Use the MVC pattern where Model contains all logic and View is stripped from classes/functions/etc. The Controller is the glue that ties these two together.
- DB should have its own Model. Use MySQL PDO (or alike) as well as protection against SQL injections.
- Build in error handling to a reasonable extent
- Make sure all config is stored in a config file. We have to be able to test and run the solution locally. Also make sure that the DB structure is available (for example in a SQL file)
- Do NOT spend time on a good GUI. The important part is the backend code and that it’s clean, structured, reasonably documented, etc
- HTML code should be w3c valid
- Make sure to mind the security!

## Features...

### ...for end users

- list all posts with title and description.
- create new post.
- edit existing post.
- frontend form validation.
- W3C compliant.

### ...for developers

- lightweight custom CMS.
- core features (`core` folder) isolated from consumers (`app` folder).
- database dumo with fake data (`database.sql` file).
- consistent PHP coding standard (run `composer php-check .`).

## Remaining tasks

- [ ] flash session data to display validation error messages from backend.
- [ ] make frontend and backend validation uniform (to go beyond the strict instructions).
- [ ] implement logic to store and retrieve translations for static texts.
- [ ] extract array manipulation from `src/Config.php` for future usages (e.g. with session data).
- [ ] styling.
- [ ] test `core`.
- [ ] test `app`.
- [ ] migrate to PHP 7.4.
- [ ] add Docker container.

## Requirements

- a web server (tested with Apache and Laravel Lumen).
- PHP >= 7.2.
- MySQL (tested with version 5.6 and 5.7).
- [composer](https://getcomposer.org/)

## Deployment

1. Download the code to an empty folder:
```bash
git clone https://github.com/simondubois/starweb-test.git /var/www/starweb-test
```
2. Create autoloading files:
```bash
composer dump-autoload
```
3. Create the configuration file:
```bash
cd /var/www/simondubois && cp config/database.php.example config/database.php
```
5. In the `config/database.php` file, set variables to the relevant information for your MySQL server and database.
6. Import the database dump from `database.sql`.
8. Point the web server to `/var/www/starweb-test/public`.

## FAQ

### Why does W3C validation failed on route `/` with the provided database dump?
> The provided database dump contains [naughty texts](https://github.com/minimaxir/big-list-of-naughty-strings) for testing purpose. Some of the characters included in the dump are not HTML compliant. To assess W3C compliance, please truncate the database and add your own records.

### Why is Docker container not included?
> In the past, I used to [work with Docker](https://hub.docker.com/u/simondubois/). However, since the [persistent known performance issue with macos](https://github.com/docker/for-mac/issues/77), I switched to [Laravel Valet](https://laravel.com/docs/6.x/valet) and called it a day.

### Why have you duplicated the create and edit forms?
> From experience, create and edit views tend to develop toward different usages over time. It is common to ease user interactions by adding/removing/locking/customizing fields for either creating or updating records. Keeping two different files seemed to be a good tradeoff as ["Duplication is cheaper than the wrong abstraction"](https://www.sandimetz.com/blog/2016/1/20/the-wrong-abstraction).
