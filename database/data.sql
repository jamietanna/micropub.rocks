INSERT INTO `tests` (`id`, `group`, `number`, `name`, `description`)
VALUES
  (1, 'server', 100, 'Create an h-entry post (form-encoded)', NULL),
  (2, 'server', 200, 'Create an h-entry post (JSON)', NULL),
  (3, 'server', 101, 'Create an h-entry post with multiple categories (form-encoded)', NULL),
  (4, 'server', 201, 'Create an h-entry post with multiple categories (JSON)', NULL),
  (6, 'server', 204, 'Create an h-entry post with a nested object (JSON)', NULL),
  (7, 'server', 300, 'Create an h-entry with a photo (multipart)', NULL),
  (8, 'server', 301, 'Create an h-entry with two photos (multipart)', NULL),
  (9, 'server', 104, 'Create an h-entry with a photo referenced by URL (form-encoded)', NULL),
  (11, 'server', 203, 'Create an h-entry with a photo referenced by URL (JSON)', NULL),
  (12, 'server', 400, 'Replace a property', NULL),
  (13, 'server', 401, 'Add a value to an existing property', NULL),
  (14, 'server', 500, 'Delete a post (form-encoded)', NULL),
  (15, 'server', 501, 'Delete a post (JSON)', NULL),
  (16, 'server', 502, 'Undelete a post (form-encoded)', NULL),
  (17, 'server', 503, 'Undelete a post (JSON)', NULL),
  (19, 'server', 402, 'Add a value to a non-existent property', NULL),
  (20, 'server', 403, 'Remove a value from a property', NULL),
  (21, 'server', 404, 'Remove a property', NULL),
  (22, 'server', 405, 'Reject the request if operation is not an array', NULL),
  (23, 'server', 600, 'Configuration Query', NULL),
  (24, 'server', 601, 'Syndication Endpoint Query', NULL),
  (25, 'server', 602, 'Source Query (All Properties)', NULL),
  (26, 'server', 603, 'Source Query (Specific Properties)', NULL),
  (27, 'server', 700, 'Upload a jpg to the Media Endpoint', NULL),
  (28, 'server', 701, 'Upload a png to the Media Endpoint', NULL),
  (29, 'server', 702, 'Upload a gif to the Media Endpoint', NULL),
  (30, 'server', 800, 'Accept access token in HTTP header', NULL),
  (31, 'server', 801, 'Accept access token in POST body', NULL),
  (33, 'server', 202, 'Create an h-entry with HTML content (JSON)', NULL),
  (34, 'server', 107, 'Create an h-entry post with one category (form-encoded)', NULL),
  (35, 'server', 205, 'Create an h-entry post with a photo with alt text (JSON)', NULL),
  (36, 'server', 206, 'Create an h-entry with multiple photos referenced by URL (JSON)', NULL),
  (37, 'server', 802, 'Does not store access token property', NULL),
  (38, 'server', 803, 'Rejects unauthenticated requests', NULL),
  (39, 'server', 804, 'Rejects unauthorized access tokens', NULL),
  (40, 'client', 100, 'Create an h-entry post (form-encoded)', '      <p>This is a basic test of creating an h-entry post from your client in form-encoded format.</p>\n      <p>To pass this test, use your client to create an h-entry post with plain text content. It doesn\'t matter what text you send.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (41, 'client', 200, 'Create an h-entry post (JSON)', '      <p>This is a basic test of creating an h-entry post from your client in JSON format.</p>\n      <p>To pass this test, use your client to create an h-entry post with plain text content. It doesn\'t matter what text you send.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (42, 'client', 101, 'Create an h-entry post with multiple categories (form-encoded)', '      <p>This is a test of creating an h-entry post from your client in form-encoded format with multiple properties of the same name.</p>\n      <p>To pass this test, use your client to create an h-entry post with multiple categories. It doesn\'t matter what text you send as the content, or what category names you use.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (43, 'client', 201, 'Create an h-entry post with multiple categories (JSON)', '      <p>This is a test of creating an h-entry post from your client in JSON format with multiple values of a property.</p>\n      <p>To pass this test, use your client to create an h-entry post with multiple categories. It doesn\'t matter what text you send as the content, or what category names you use.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (44, 'client', 104, 'Create an h-entry with a file referenced by URL (form-encoded)', '      <p>This is a test of creating an h-entry post from your client in form-encoded format, including a photo, video or audio referenced by URL.</p><p>To pass this test, use your client to create an h-entry post including a "photo", "video" or "audio" parameter referencing a URL. Typically this is the flow when the user chooses a photo and the client uploads it to their media endpoint.</p><p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (45, 'client', 203, 'Create an h-entry with a file referenced by URL (JSON)', '       <p>This is a test of creating an h-entry post from your client in JSON format, including a file referenced by URL.</p><p>To pass this test, use your client to create an h-entry post including a "photo", "video" or "audio" parameter referencing a URL. Typically this is the flow when the user chooses a file and the client uploads it to their media endpoint.</p><p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (46, 'client', 204, 'Create a post including a nested Microformats2 object (JSON)', '       <p>This is a test of creating a post from your client in JSON format, including a nested Microformats2 object.</p><p>To pass this test, use your client to create an h-entry or other h-* post including any other property whose value is another Microformats object. Typical uses of this would be including a nested h-card to tag a photo with a person, or including an h-item object in an h-review.</p>'),
  (47, 'client', 205, 'Create an h-entry with a photo including image alt text', '      <p>This is a test of creating an h-entry post including a photo with alt text.</p>\n      <p>To pass this test, use your client to create an h-entry post including a \"photo\" parameter referencing a photo URL as well as the alt text. See <a href=\"https://www.w3.org/TR/micropub/#uploading-a-photo-with-alt-text\">section 3.3.2</a> for an example of the syntax.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (48, 'client', 300, 'Create an h-entry with a file upload (Multipart)', '<p>This is a test of creating an h-entry post from your client including uploading a photo, audio or video attachment. This request must be sent in Multipart format.</p> <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (49, 'client', 107, 'Create an h-entry post with one category (form-encoded)', '      <p>This is a test of creating an h-entry post from your client in form-encoded format with one value for a property that also supports multiple values.</p>\n      <p>To pass this test, use your client to create an h-entry post with one category, using the parameter <code>category</code> rather than <code>category[]</code>. It doesn\'t matter what text you send as the content, or what category name you use.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (50, 'client', 600, 'Configuration Query', '<p>To pass this test, your client will need to make a <a href=\"https://www.w3.org/TR/micropub/#configuration\">configuration query</a> to the Micropub endpoint.</p>'),
  (51, 'client', 601, 'Syndication Query', '<p>To pass this test, your client will need to make a <a href=\"https://www.w3.org/TR/micropub/#syndication-targets\">configuration query</a> to the Micropub endpoint requesting the list of syndication targets.</p>'),
  (52, 'client', 105, 'Create an h-entry and syndicate it', '<p>This test will ensure that your client supports allowing the user to select a syndication destination for the post.</p>\n<p>Typically the client will show the syndication options that the user\'s Micropub endpoint returns as buttons or checkboxes, and allow the user to select one or more of them.</p>\n<p>To pass this test, you will need to include at least one <a href=\"https://www.w3.org/TR/micropub/#syndication-targets\">syndication target</a> that is returned by the Micropub endpoint in the request to create the h-entry.</p>'),
  (53, 'client', 202, 'Create an h-entry with HTML content (JSON)', '      <p>This is a test of creating an h-entry post from your client with HTML content.</p>\n      <p>To pass this test, use your client to create an h-entry post with HTML, the request should be in JSON format. See <a href=\"https://www.w3.org/TR/micropub/#new-article-with-html\">New Article with HTML</a> for details on the syntax to use.</p>\n      <p>Keep this page open and post from your client. Your post will appear here.</p>'),
  (54, 'client', 700, 'Upload a photo to the Media Endpoint', '<p>To pass this test, your client will need to discover the Media Endpoint of the server, and upload an image there.</p>\n<p>Your image will appear below after it\'s been uploaded.</p>'),
  (55, 'client', 400, 'Replace a property in a post', '<p>To pass this test, replace the <code>content</code> property with a string containing at least 3 words.</p>'),
  (56, 'client', 401, 'Add a value to an existing property', '<p>To pass this test, add the value <code>foo</code> to the property <code>category</code>.</p>'),
  (57, 'client', 402, 'Remove a value from a property', '<p>To pass this test, remove the value <code>foo</code> from the property <code>category</code>.</p>'),
  (58, 'client', 403, 'Remove a property', '<p>To pass this test, remove the entire <code>category</code> property.</p>'),
  (59, 'client', 500, 'Delete a post', '<p>To pass this test, delete the post referred to by the URL below. You can send this request as either form-encoded or JSON.</p>'),
  (60, 'client', 502, 'Undelete a post', '<p>To pass this test, undelete the post referred to by the URL below. You can send this request as either form-encoded or JSON.</p>'),
  (61, 'client', 602, 'Source Query (All Properties)', '<p>To pass this test, query the Micropub endpoint to find all the source properties for the post below. By not requesting any particular properties in the request, the endpoint will return all the properties.</p>'),
  (62, 'client', 603, 'Source Query (Specific Properties)', '<p>To pass this test, query the Micropub endpoint to find the \"content\" and \"category\" properties for the post below. The endpoint will return just the properties requested.</p>');


INSERT INTO `features` (`id`, `group`, `number`, `description`, `tests`)
VALUES
  (1, 'server', 1, 'Discovering the Micropub endpoint given the profile URL of a user', NULL),
  (2, 'server', 2, 'Authenticating requests by including the access token in the HTTP Authorization header', NULL),
  (3, 'server', 3, 'Authenticating requests by including the access token in the post body for x-www-form-urlencoded requests', NULL),
  (4, 'server', 4, 'Limiting the ability to create posts given an access token by requiring that the access token contain at least one OAuth 2.0 scope value', NULL),
  (5, 'server', 5, 'Creating a post using x-www-form-urlencoded syntax with one or more properties', NULL),
  (6, 'server', 6, 'Creating a post using JSON syntax with one or more properties', NULL),
  (7, 'server', 7, 'Creating a post using x-www-form-urlencoded syntax with multiple values of the same property name', NULL),
  (8, 'server', 8, 'Creating a post using JSON syntax with multiple values of the same property name', NULL),
  (9, 'server', 9, 'Creating a post using JSON syntax including a nested Microformats2 object', NULL),
  (10, 'server', 10, 'Uploading a file to the specified Media Endpoint', NULL),
  (11, 'server', 11, 'Creating a post with a file by sending the request as multipart/form-data to the Micropub endpoint', NULL),
  (12, 'server', 12, 'Creating a post with a photo referenced by URL', NULL),
  (13, 'server', 13, 'Creating a post with a photo referenced by URL that includes image alt text', NULL),
  (14, 'server', 14, 'Returning HTTP 201 Created and a Location header when creating a post', NULL),
  (15, 'server', 15, 'Returning HTTP 202 Created and a Location header when creating a post', NULL),
  (16, 'server', 16, 'Updating a post and replacing all values of a property', NULL),
  (17, 'server', 17, 'Updating a post and adding a value to a property', NULL),
  (18, 'server', 18, 'Updating a post and removing a value from a property', NULL),
  (19, 'server', 19, 'Updating a post and removing a property', NULL),
  (20, 'server', 20, 'Returning HTTP 200 OK when updating a post', NULL),
  (21, 'server', 21, 'Returning HTTP 201 Created when updating a post if the update cause the post URL to change', NULL),
  (22, 'server', 22, 'Returning HTTP 204 No Content when updating a post', NULL),
  (23, 'server', 23, 'Deleting a post using x-www-form-urlencoded syntax', NULL),
  (24, 'server', 24, 'Deleting a post using JSON syntax', NULL),
  (25, 'server', 25, 'Undeleting a post using x-www-form-urlencoded syntax', NULL),
  (26, 'server', 26, 'Undeleting a post using JSON syntax', NULL),
  (27, 'server', 27, 'Uploading a photo to the Media Endpoint and using the resulting URL when creating a post', NULL),
  (28, 'server', 28, 'Querying the Micropub endpoint with q=config to retrieve the Media Endpoint and syndication targets if specified', NULL),
  (29, 'server', 29, 'Querying the Micropub endpoint with q=syndicate-to to retrieve the list of syndication targets', NULL),
  (30, 'server', 30, 'Querying the Micropub endpoint for a post\'s source content without specifying a list of properties', NULL),
  (31, 'server', 31, 'Querying the Micropub endpoint for a post\'s source content looking only for specific properties', NULL),
  (32, 'server', 32, 'Creating a post using x-www-form-urlencoded syntax with a single value for a property that normally accepts multiple values', NULL),
  (33, 'server', 33, 'Updating a post and adding a property', NULL),
  (34, 'client', 1, 'The client discovers the Micropub endpoint given the profile URL of a user', NULL),
  (35, 'client', 2, 'The client sends the access token in the HTTP Authorization header', NULL),
  (36, 'client', 3, 'The client sends the access token in the post body for x-www-form-urlencoded requests', NULL),
  (37, 'client', 4, 'The client requests one or more scope values when obtaining user authorization', NULL),
  (38, 'client', 5, 'Creates posts using x-www-form-urlencoded syntax', NULL),
  (39, 'client', 6, 'Creates posts using JSON syntax', NULL),
  (40, 'client', 7, 'Creates posts using x-www-form-urlencoded syntax with multiple values of the same property name (e.g. tags)', NULL),
  (41, 'client', 8, 'Creates posts using JSON syntax with multiple values of the same property name (e.g. tags)', NULL),
  (42, 'client', 9, 'Creates posts using JSON syntax including a nested Microformats2 object', NULL),
  (43, 'client', 10, 'Creates posts including a file by sending the request as multipart/form-data to the Micropub endpoint', NULL),
  (44, 'client', 11, 'Allows creating posts with a photo referenced by URL rather than uploading the photo as a Multipart request. (form-encoded)', NULL),
  (45, 'client', 12, 'Allows creating posts with a photo referenced by URL rather than uploading the photo as a Multipart request. (JSON)', NULL),
  (46, 'client', 13, 'Allows creating posts with a photo including image alt text.', NULL),
  (47, 'client', 14, 'Recognizes HTTP 201 and 202 with a Location header as a successful response from the Micropub endpoint', NULL),
  (48, 'client', 15, 'Allows the user to specify one or more syndication endpoints from their list of endpoints discovered in the q=config or q=syndicate-to query', NULL),
  (49, 'client', 16, 'Checks to see if the Micropub endpoint specifies a Media Endpoint, and uploads photos there instead', NULL),
  (50, 'client', 17, 'Uses multipart requests only as a fallback when there is no Media Endpoint specified', NULL),
  (51, 'client', 18, 'Supports replacing all values of a property (e.g. replacing the post content)', NULL),
  (52, 'client', 19, 'Supports adding a value to a property (e.g. adding a tag)', NULL),
  (53, 'client', 20, 'Supports removing a value from a property (e.g. removing a specific tag)', NULL),
  (54, 'client', 21, 'Supports removing a property', NULL),
  (55, 'client', 22, 'Recognizes HTTP 200, 201 and 204 as a successful response from the Micropub endpoint', NULL),
  (56, 'client', 23, 'Sends deletion requests using x-www-form-urlencoded syntax', NULL),
  (57, 'client', 24, 'Sends deletion requests using JSON syntax', NULL),
  (58, 'client', 25, 'Sends undeletion requests using x-www-form-urlencoded syntax', NULL),
  (59, 'client', 26, 'Sends undeletion requests using JSON syntax', NULL),
  (60, 'client', 27, 'Queries the Micropub endpoint with q=config', NULL),
  (61, 'client', 28, 'Looks in the response for the Media Endpoint', NULL),
  (62, 'client', 29, 'Looks in the response for syndication targets', NULL),
  (63, 'client', 30, 'Queries the Micropub endpoint with q=syndicate-to', NULL),
  (64, 'client', 31, 'Queries the Micropub endpoint for a post\'s source content without specifying a list of properties', NULL),
  (65, 'client', 32, 'Queries the Micropub endpoint for a post\'s source content looking only for specific properties', NULL),
  (66, 'server', 34, 'Creating a post with HTML content', NULL),
  (67, 'client', 33, 'Creating a post with HTML content', NULL);


