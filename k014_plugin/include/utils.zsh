#GET EXTERNAL IP ADDRESS
function getip()
{
	curl http://ipecho.net/plain; echo;
}
