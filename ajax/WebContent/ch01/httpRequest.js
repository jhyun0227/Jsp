var httpRequest;
function getXMLHttpRequest() {
	if (window.ActiveXObject) {
		return new ActiveXObject("Msxml2.XMLHTTP");
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else { return null; }
}
function sendRequest(url, params, callback, method) {
	httpRequest = getXMLHttpRequest();
	var httpMethod = method ? method : 'get';
	if (httpMethod != 'post' && httpMethod != 'get') {
		httpMethod = 'get';
	}
	var httpParams = (params == null || params == '') ? 
			null : params;
	var httpUrl = url;
	if (httpMethod == 'get' && httpParams != null) {
		httpUrl = httpUrl + "?" + httpParams;
	}
	httpRequest.open(httpMethod, httpUrl, true);
	httpRequest.setRequestHeader(
		'Content-Type', 'application/x-www-form-urlencoded');
	httpRequest.onreadystatechange = callback;
	httpRequest.send(httpMethod == 'post' ? httpParams : null);
}