public class JSONPlaceholderExercise {
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';
    
    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to fetch
     * @return String - The JSON response from the API
     */
    public static String getPostById(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'GET'
        // 4. Send the request and get the response
        // 5. Return the response body as string
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setMethod('GET');

        String retrievedPost;
        try {
            HttpResponse res = http.send(req);
            if (res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
                retrievedPost = res.getBody();
            } else {
                retrievedPost = 'There was an error retrieving the post. ';
                retrievedPost += 'Error message: ' + res.getStatusCode() + ' ' + res.getBody();
            }
        } catch (CalloutException ex) {
            throw ex;
        }
        
        return retrievedPost;
    }
    
    /**
     * Exercise 2: Implement a POST request to create a new post
     * Endpoint: /posts
     * @param title - The title of the post
     * @param body - The body content of the post
     * @param userId - The user ID creating the post
     * @return String - The JSON response from the API
     */
    public static String createPost(String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts'
        // 3. Set the HTTP method to 'POST'
        // 4. Create a JSON string with the post data
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts');
        req.setMethod('POST');
        req.setHeader('ContentType', 'application/json');
        String reqBody = '{ "title": "' + title + '", "body": "' + body + '", "userId": "' + userId + '"}"';
        req.setBody(reqBody);

        String responseBody;
        try {
            HttpResponse res = http.send(req);
            if (res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
                responseBody = res.getBody();
            } else {
                responseBody = 'There was an error creating the post. ';
                responseBody += 'Error message: ' + res.getStatusCode() + ' ' + res.getBody();
            }
        } catch (CalloutException ex) {
            throw ex;
        }
        
        return responseBody;
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to update
     * @param title - The new title
     * @param body - The new body content
     * @param userId - The user ID
     * @return String - The JSON response from the API
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PUT'
        // 4. Create a JSON string with the updated post data
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        Http http = new HTTP();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setHeader('ContentType', 'application/json');
        req.setMethod('PUT');
        String reqBody = '{ "id": "' + postId + '", "title": "' + title + '", "body": "' + body + '", "userId": "' + userId + '"}"';         
        req.setBody(reqBody);

        String responseBody;
        try {
            HttpResponse res = http.send(req);
            if (res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
                responseBody = res.getBody();
            } else {
                responseBody = 'There was an error creating the post. ';
                responseBody += 'Error code: ' + res.getStatusCode();
            }
        } catch (CalloutException ex) {
            throw ex;
        }
        
        return responseBody;
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to patch
     * @param title - The new title (can be null)
     * @return String - The JSON response from the API
     */
    public static String patchPostTitle(Integer postId, String title) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PATCH'
        // 4. Create a JSON string with only the title
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        Http http = new HTTP();
        HttpRequest req = new HttpRequest();
        req.setEndpoint(BASE_URL + '/posts/' + postId);
        req.setHeader('ContentType', 'application/json');
        req.setMethod('PATCH');
        String reqBody = '{ "id": "' + postId + '", "title": "' + title + '"}"';         
        req.setBody(reqBody);

        String responseBody;
        try {
            HttpResponse res = http.send(req);
            if (res.getStatusCode() >= 200 && res.getStatusCode() < 300) {
                responseBody = res.getBody();
            } else {
                responseBody = 'There was an error creating the post. ';
                responseBody += 'Error code: ' + res.getStatusCode();
            }
        } catch (CalloutException ex) {
            throw ex;
        }
        
        return responseBody;
    }
    
    /**
     * Exercise 5: Implement a DELETE request to remove a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to delete
     * @return Integer - The HTTP status code from the response
     */
    public static Integer deletePost(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'DELETE'
        // 4. Send the request and get the response
        // 5. Return the response status code
        return null;
    }
} 