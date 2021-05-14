## QRCode Reader for Mac

### Background

#### What is this app?

This is a simple command line QRCode Reader for Mac.

The app accepts any image format supported by Apple's CoreImage API (pdf, gif, jpg, png, tiff etc).

### Usage

Usage: 

`./qrcode file.png`

Output: 

Each QR code found in the document will be printed on a new line. 

![Example file with multiple QR Codes](https://files.littlebird.com.au/e0RrJ-uSF6A1uyz6EzwmjdF5I3ZG1oh7Se.png "Example file with multiple QR Codes")

For example the file above would output:

```
my@mac ~ % ./qrcode ./e0RrJ.png
|43742|ESN3-822|PINK|12|[200_unique_serializations]|
|43742|ESN3-822|PINK|18|[200_unique_serializations]|
|43742|ESN3-822|BLU|9|[200_unique_serializations]|
|43742|ESN3-822|PINK|9|[200_unique_serializations]|
|43742|ESN3-822|BLU|12|[200_unique_serializations]|
|43743|ETSG-1021|DK._BLU|18|[200_unique_serializations]|
```


### Why did I build this? 

I wanted to automate the filing of scanned documents based on embedded QR codes.

## MIT License

Copyright 2021 Marcus Schappi

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

