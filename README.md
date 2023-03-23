# chapter-page-downloader

## Show help
```
./pageDownload.sh -h
```

## Download pages:
### Download all available pages:
```
./pageDownload.sh http://example.com/ 0237
```
- __First param__: url of the image
- __Second param__: chapter number as it appears in the url
- Will download starting from http://example.com/0237-001.png

### Download specific pages
```
./pageDownload.sh http://example.com/ 0237 1 75
```
- Will download from http://example.com/0237-001.png til http://example.com/0237-075.png

## Example (hi daniel)
```
./pageDownload.sh https://official-ongoing-2.gamindustri.us/manga/Berserk/Part2/ 0319
```
