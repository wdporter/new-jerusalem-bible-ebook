#delete book if exsiting
remove-item njb.epub -ea ig

#delete dist folder
remove-item dist -recurse -force

# build the project
npm run build

# reset the name of mimetype so that it will be first item in the archive
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\"Program Files"\7-Zip\7z a -tzip njb.epub .\dist\*

# rename !mimetype  
C:\"Program Files"\7-Zip\7z rn njb.epub !mimetype mimetype



