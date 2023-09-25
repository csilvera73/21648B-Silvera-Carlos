-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 02:45:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `posts`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `imglink` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `imglink`, `createdAt`, `updatedAt`) VALUES
(1, '100 continue', 'The HTTP 100 Continue informational status response code indicates that everything so far is OK and that the client should continue with the request or ignore it if it is already finished.\r\n\r\nTo have a server check the request\'s headers, a client must send Expect: 100-continue as a header in its initial request and receive a 100 Continue status code in response before sending the body.', 'https://http.cat/images/100.jpg', '2023-09-24 16:46:58', '2023-09-24 16:46:58'),
(2, '101 Switching Protocols', 'The HTTP 101 Switching Protocols response code indicates a protocol to which the server switches. The protocol is specified in the Upgrade request header received from a client.\r\n\r\nThe server includes in this response an Upgrade response header to indicate the protocol it switched to.\r\n\r\nThe process is described in the following article: Protocol upgrade mechanism', 'https://http.cat/images/101.jpg', '2023-09-24 16:47:52', '2023-09-24 16:47:52'),
(3, '102 Processing', 'The HTTP 102 Processing informational status response code indicates to client that a full request has been received and the server is working on it.\r\n\r\nThis status code is only sent if the server expects the request to take significant time. It tells the client that your request is not dead yet.', 'https://http.cat/images/102.jpg', '2023-09-24 16:48:13', '2023-09-24 16:48:13'),
(4, '103 Early Hints\r\n', 'The HTTP 103 Early Hints information response may be sent by a server while it is still preparing a response, with hints about the resources that the server is expecting the final response will link.\r\n\r\nThis allows a browser to start preloading resources even before the server has prepared and sent that final response.\r\n\r\nThe early hint response is primarily intended for use with the Link header, which indicates the resources to be loaded.\r\n\r\nIt may also contain a Content-Security-Policy header that is enforced while processing the early hint.\r\n\r\nA server might send multiple 103 responses, for example, following a redirect. Browsers only process the first early hint response, and this response must be discarded if the request results in a cross-origin redirect. Preloaded resources from the early hint are effectively pre-pended to the Document\'s head element, and then followed by the resources loaded in the final response.', 'https://http.cat/images/103.jpg', '2023-09-24 16:48:50', '2023-09-24 16:48:50'),
(5, '200 OK', 'The HTTP 200 OK success status response code indicates that the request has succeeded. A 200 response is cacheable by default.\r\n\r\nThe meaning of a success depends on the HTTP request method:\r\n\r\nGET: The resource has been fetched and is transmitted in the message body.\r\nHEAD: The representation headers are included in the response without any message body\r\nPOST: The resource describing the result of the action is transmitted in the message body\r\nTRACE: The message body contains the request message as received by the server.\r\nThe successful result of a PUT or a DELETE is often not a 200 OK but a 204 No Content (or a 201 Created when the resource is uploaded for the first time).', 'https://http.cat/images/200.jpg', '2023-09-24 16:49:19', '2023-09-24 16:49:19'),
(6, '201 Created', 'The HTTP 201 Created success status response code indicates that the request has succeeded and has led to the creation of a resource.The new resource, or a description and link to the new resource, is effectively created before the response is sent back and the newly created items are returned in the body of the message, located at either the URL of the request, or at the URL in the value of the Location header.The common use case of this status code is as the result of a POST request.', 'https://http.cat/images/201.jpg', '2023-09-24 16:13:41', '2023-09-24 16:13:41'),
(7, '202 Accepted', 'The HTTP 202 Accepted response status code indicates that the request has been accepted for processing, but the processing has not been completed; in fact, processing may not have started yet. \r\nThe request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place. 202 is non-committal, meaning that there is no way for the HTTP to later send an asynchronous response indicating the outcome of processing the request. It is intended for cases where another process or server handles the request, or for batch processing.', 'https://http.cat/images/202.jpg', '2023-09-24 16:23:35', '2023-09-24 16:23:35'),
(8, '203 Non-Authoritative Information', 'The HTTP 203 Non-Authoritative Information response status indicates that the request was successful but the enclosed payload has been modified by a transforming proxy from that of the origin server\'s 200 OK response. The 203 response is similar to the value 214, meaning Transformation Applied, of the Warning header code, which has the additional advantage of being applicable to responses with any status code.', 'https://http.cat/images/203.jpg', '2023-09-24 16:27:56', '2023-09-24 16:27:56'),
(9, '204 No Content', 'The HTTP 204 No Content success status response code indicates that a request has succeeded, but that the client doesn\'t need to navigate away from its current page. This might be used, for example, when implementing \"save and continue editing\" functionality for a wiki site. In this case a PUT request would be used to save the page, and the 204 No Content response would be sent to indicate that the editor should not be replaced by some other page. A 204 response is cacheable by default (an ETag header is included in such a response).', 'https://http.cat/images/204.jpg', '2023-09-24 16:28:36', '2023-09-24 16:28:36'),
(10, '206 Partial Content CORREGIDO', 'The HTTP 206 Partial Content success status response code indicates that the request has succeeded and the body contains the requested ranges of data, as described in the Range header of the request. If there is only one range, the Content-Type of the whole response is set to the type of the document, and a Content-Range is provided. If several ranges are sent back, the Content-Type is set to multipart/byteranges and each fragment covers one range, with Content-Range and Content-Type describing it. CORREGIDO', 'https://http.cat/images/206.jpg', '2023-09-24 16:29:14', '2023-09-24 17:57:59'),
(11, '207 Multi-Status', 'The HTTP 207 Multi-Status response code indicates that there might be a mixture of responses. The response body is a text/xml or application/xml HTTP entity with a multistatus root element. The XML body will list all individual response codes.', 'https://http.cat/images/207.jpg', '2023-09-24 16:29:53', '2023-09-24 16:29:53'),
(15, '300 Multiple Choices', 'The HTTP 300 Multiple Choices redirect status response code indicates that the request has more than one possible response.\r\n\r\nThe user-agent or the user should choose one of them.\r\n\r\nAs there is no standardized way of choosing one of the responses, this response code is very rarely used.\r\n\r\nIf the server has a preferred choice, it should generate a Location header.', 'https://http.cat/images/300.jpg', '2023-09-25 00:27:26', '2023-09-25 00:27:26'),
(16, '301 Moved Permanently', 'The HTTP 301 Moved Permanently redirect status response code indicates that the requested resource has been definitively moved to the URL given by the Location headers. A browser redirects to the new URL and search engines update their links to the resource.\r\nNote: Although the specification requires the method and the body to remain unchanged when the redirection is performed, not all user-agents meet this requirement. Use the 301 code only as a response for GET or HEAD methods and use the 308 Permanent Redirect for POST methods instead, as the method change is explicitly prohibited with this status.', 'https://http.cat/images/301.jpg', '2023-09-25 00:28:22', '2023-09-25 00:28:22'),
(17, '302 Found', 'he HTTP 302 Found redirect status response code indicates that the resource requested has been temporarily moved to the URL given by the Location header. A browser redirects to this page but search engines don\'t update their links to the resource (in \'SEO-speak\', it is said that the \'link-juice\' is not sent to the new URL).\r\n\r\nEven if the specification requires the method (and the body) not to be altered when the redirection is performed, not all user-agents conform here - you can still find this type of bugged software out there. It is therefore recommended to set the 302 code only as a response for GET or HEAD methods and to use 307 Temporary Redirect instead, as the method change is explicitly prohibited in that case.\r\n\r\nIn the cases where you want the method used to be changed to GET, use 303 See Other instead. This is useful when you want to give a response to a PUT method that is not the uploaded resource but a confirmation message such as: \'you successfully uploaded XYZ\'.', 'https://http.cat/images/302.jpg', '2023-09-25 00:28:42', '2023-09-25 00:28:42'),
(18, '303 See Other', 'The HTTP 303 See Other redirect status response code indicates that the redirects don\'t link to the requested resource itself, but to another page (such as a confirmation page, a representation of a real-world object — see HTTP range-14 — or an upload-progress page).\r\n\r\nThis response code is often sent back as a result of PUT or POST.\r\n\r\nThe method used to display this redirected page is always GET.', 'https://http.cat/images/303.jpg', '2023-09-25 00:29:06', '2023-09-25 00:29:06'),
(19, '304 Not Modified', 'he HTTP 304 Not Modified client redirection response code indicates that there is no need to retransmit the requested resources. It is an implicit redirection to a cached resource. This happens when the request method is a safe method, such as GET or HEAD, or when the request is conditional and uses an If-None-Match or an If-Modified-Since header.\r\n\r\nThe response must not contain a body and must include the headers that would have been sent in an equivalent 200 OK response: Cache-Control, Content-Location, Date, ETag, Expires, and Vary.\r\n\r\nNote: Many developer tools\' network panels of browsers create extraneous requests leading to 304 responses, so that access to the local cache is visible to developers.', 'https://http.cat/images/304.jpg', '2023-09-25 00:30:15', '2023-09-25 00:30:15'),
(20, '305 Use Proxy', 'Deprecated: The HTTP 305 Use Proxy status code has been deprecated due to security concerns and many HTTP clients ignore this status code.\r\nHTTP response status code 305 Use Proxy is a deprecated HTTP status code returned by an origin server to indicate that the requested resource can only be accessed through a proxy server.\r\n\r\nThe 305 Use Proxy status code is used to inform the client that the requested resource must be obtained through a proxy server and includes that proxy address in the Set-Proxy HTTP header or in the Location HTTP header.', 'https://http.cat/images/305.jpg', '2023-09-25 00:30:34', '2023-09-25 00:30:34'),
(21, '307 Temporary Redirect', 'HTTP 307 Temporary Redirect redirect status response code indicates that the resource requested has been temporarily moved to the URL given by the Location headers.\r\n\r\nThe method and the body of the original request are reused to perform the redirected request. In the cases where you want the method used to be changed to GET, use 303 See Other instead. This is useful when you want to give an answer to a PUT method that is not the uploaded resources, but a confirmation message (like \"You successfully uploaded XYZ\").\r\n\r\nThe only difference between 307 and 302 is that 307 guarantees that the method and the body will not be changed when the redirected request is made. With 302, some old clients were incorrectly changing the method to GET: the behavior with non-GET methods and 302 is then unpredictable on the Web, whereas the behavior with 307 is predictable. For GET requests, their behavior is identical.', 'https://http.cat/images/307.jpg', '2023-09-25 00:31:03', '2023-09-25 00:31:03'),
(22, '308 Permanent Redirect', 'The HTTP 308 Permanent Redirect redirect status response code indicates that the resource requested has been definitively moved to the URL given by the Location headers. A browser redirects to this page and search engines update their links to the resource (in \'SEO-speak\', it is said that the \'link-juice\' is sent to the new URL).\r\n\r\nThe request method and the body will not be altered, whereas 301 may incorrectly sometimes be changed to a GET method.\r\n\r\nNote: Some Web applications may use the 308 Permanent Redirect in a non-standard way and for other purposes. For example, Google Drive uses a 308 Resume Incomplete response to indicate to the client when an incomplete upload stalled.', 'https://http.cat/images/308.jpg', '2023-09-25 00:31:39', '2023-09-25 00:31:39'),
(23, '400 Bad Request', 'The HTTP 400 Bad Request response status code indicates that the server cannot or will not process the request due to something that is perceived to be a client error (for example, malformed request syntax, invalid request message framing, or deceptive request routing).\r\n\r\nWarning: The client should not repeat this request without modification.', 'https://http.cat/images/400.jpg', '2023-09-25 00:32:37', '2023-09-25 00:32:37'),
(24, '401 Unauthorized', 'The HTTP 401 Unauthorized response status code indicates that the client request has not been completed because it lacks valid authentication credentials for the requested resource.\r\n\r\nThis status code is sent with an HTTP WWW-Authenticate response header that contains information on how the client can request for the resource again after prompting the user for authentication credentials.\r\n\r\nThis status code is similar to the 403 Forbidden status code, except that in situations resulting in this status code, user authentication can allow access to the resource.', 'https://http.cat/images/401.jpg', '2023-09-25 00:32:59', '2023-09-25 00:32:59'),
(25, '402 Payment Required', 'Experimental: This is an experimental technology. Check the Browser compatibility table carefully before using this in production.\r\nThe HTTP 402 Payment Required is a nonstandard response status code that is reserved for future use. This status code was created to enable digital cash or (micro) payment systems and would indicate that the requested content is not available until the client makes a payment.\r\n\r\nSometimes, this status code indicates that the request cannot be processed until the client makes a payment. However, no standard use convention exists and different entities use it in different contexts.', 'https://http.cat/images/402.jpg', '2023-09-25 00:33:24', '2023-09-25 00:33:24'),
(26, '403 Forbidden', 'The HTTP 403 Forbidden response status code indicates that the server understands the request but refuses to authorize it.\r\n\r\nThis status is similar to 401, but for the 403 Forbidden status code, re-authenticating makes no difference. The access is tied to the application logic, such as insufficient rights to a resource.', 'https://http.cat/images/403.jpg', '2023-09-25 00:33:51', '2023-09-25 00:33:51'),
(27, '404 Not Found', 'The HTTP 404 Not Found response status code indicates that the server cannot find the requested resource. Links that lead to a 404 page are often called broken or dead links and can be subject to link rot.\r\n\r\nA 404 status code only indicates that the resource is missing: not whether the absence is temporary or permanent. If a resource is permanently removed, use the 410 Gone status instead.', 'https://http.cat/images/404.jpg', '2023-09-25 00:34:17', '2023-09-25 00:34:17'),
(28, '500 Internal Server Error', 'The HTTP 500 Internal Server Error server error response code indicates that the server encountered an unexpected condition that prevented it from fulfilling the request.\r\n\r\nThis error response is a generic \"catch-all\" response. Usually, this indicates the server cannot find a better 5xx error code to response. Sometimes, server administrators log error responses like the 500 status code with more details about the request to prevent the error from happening again in the future.', 'https://http.cat/images/500.jpg', '2023-09-25 00:43:19', '2023-09-25 00:43:19'),
(29, '503 Service Unavailable', 'The HTTP 503 Service Unavailable server error response code indicates that the server is not ready to handle the request.\r\n\r\nCommon causes are a server that is down for maintenance or that is overloaded. This response should be used for temporary conditions and the Retry-After HTTP header should, if possible, contain the estimated time for the recovery of the service.\r\n\r\nCaching-related headers that are sent along with this response should be taken care of, as a 503 status is often a temporary condition and responses shouldn\'t usually be cached.\r\n\r\nNote: together with this response, a user-friendly page explaining the problem should be sent.', 'https://http.cat/images/503.jpg', '2023-09-25 00:43:49', '2023-09-25 00:43:49'),
(30, '506 Variant Also Negotiates', 'The HTTP 506 Variant Also Negotiates response status code may be given in the context of Transparent Content Negotiation (see RFC 2295). This protocol enables a client to retrieve the best variant of a given resource, where the server supports multiple variants.\r\n\r\nThe Variant Also Negotiates status code indicates an internal server configuration error in which the chosen variant is itself configured to engage in content negotiation, so is not a proper negotiation endpoint.', 'https://http.cat/images/406.jpg', '2023-09-25 00:44:15', '2023-09-25 00:44:15'),
(31, '599 Network Connect Timeout Error', 'Unofficial: This HTTP status code is not specified by any RFC.\r\nThe HTTP response status code 599 Network Connect Timeout Error is an unofficial HTTP status code used by some proxies to signal a network connect timeout behind the proxy to a client in front of the proxy.', 'https://http.cat/images/599.jpg', '2023-09-25 00:45:08', '2023-09-25 00:45:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
