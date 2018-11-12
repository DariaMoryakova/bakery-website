
# Bakery Website

 This is a fullstack bakery website that displays information about cookies, cakes and muffins offered for sale as well as enables someone to receive a catalog of items sold via email.

## Client Suggestions:

Client wants it to look and feel like a bakery website. 
The front page should provide information about the bakery
have links to pages where you can see:
* all cookies
* all cakes
* all muffins
Each item sold should have
* name
* description
There should be a way for a person on the site to receive an email with a catalog of all items sold

## Technology used:

For front-end:

I am using HTML,CSS,Javascript and Materialize library to style the website. Even though, I used materialize libary,my website looks very authentic, because I made a lot of changes to the website by rewritting Materizlise styles with plain CSS. To make cakes,cookies and cupcakes rander on the page I used Javascript and DOM manipulation. As you can go on the order page you can see those randering are all dynamic.

For back-end:

I am using Sinatra microframework. I also, use the Sendgrid API to send an email to the user�s email with a catalog of all items sold. 

## Challenge:

In programming, in order to not repeat yourself, sometimes we have to store our data in a universal format that can be utilized in multiple areas. This is similar to how you would write recipe instructions down so in the future you can just use that as a template.

That all being said, try the following:

Create one class per generic category of item sold in the bakery
* Cookie class
* Cake class
* Muffin class

Use these classes to create 1 object per item being sold (e.g if you have 3 cookies for sale you would create 3 Cookie objects based on one Cookie class)

Each item should have the following attributes:

* name
* description

These objects represent digital versions of cookies, so now use these objects as data that you can utilize when displaying information about your cookies, cakes and muffins.

