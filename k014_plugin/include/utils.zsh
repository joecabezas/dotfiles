# get external ip address
function getip() {
  curl http://ipecho.net/plain; echo;
}
