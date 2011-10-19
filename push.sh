mv   ./_layouts/commented_tag_index.html  ./_layouts/tag_index.html
jekyll
git add . -A
git commit -m "render"
git push origin master
git push heroku master
mv ./_layouts/tag_index.html  ./_layouts/commented_tag_index.html 
