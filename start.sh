mv ./_layouts/tag_index.html  ./_layouts/commented_tag_index.html 
jekyll --auto --server
mv   ./_layouts/commented_tag_index.html  ./_layouts/tag_index.html