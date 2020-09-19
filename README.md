# turbobusybox
### What is busybox-curl ?
A minimum bare operating system ( busybox ) equipped with client url ( CURL ) to fetch extra godies via HTTP call.

### How to Use this Image ?
Ensure you have docker client within your machine.
Fire-up the terminal
Build the image by executing the following command:
docker build . -t yanfengking/turbobusybox:1.0
Run the image by using the following command:
docker run -it yanfengking/turbobusybox:1.0 bash