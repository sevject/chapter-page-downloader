# chapter-page-downloader

Download the file "pageDownload.sh" and go to the folder via your terminal.
Then follow the information below.

## Show help
```
./pageDownload.sh -h
```

## Download pages:
### Download all available pages:
```
./pageDownload.sh http://example.com/manga/ 0237
```
- __First param__: url of the image
- __Second param__: chapter number as it appears in the url
- Will download starting from http://example.com/manga/0237-001.png

### Download specific pages
```
./pageDownload.sh http://example.com/manga/ 0237 1 75
```
- Will download from http://example.com/manga/0237-001.png til http://example.com/manga/0237-075.png

## Example (hi daniel)
```
./pageDownload.sh https://temp.compsci88.com/manga/Berserk/ 0365
```
Sometimes they change the link of the pages so if it doesn't work just check by inspecting the first image of the chapter. The link should be something like https://example.com/manga/Berserk/0365-001.png

You just need the part until the chapter number: https://example.com/manga/Berserk/

The chapter number itself is the second paramemter needed for the script.

So it's: [SCRIPT] [LINK] [CHAPTER NUMBER] (see example above)
