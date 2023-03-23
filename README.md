# chapter-page-downloader

## Show help:
```
./pageDownload.sh -h
```

## Download pages:
### Download all available pages:
```
./pageDownload.sh http://example.com/ 0237
```
will download starting from http://example.com/0237-001.png

### Download specific pages:
```
./pageDownload.sh http://example.com/ 0237 1 75
```
will download from http://example.com/0237-001.png til http://example.com/0237-075.png
