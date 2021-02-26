Description: Board Creation

Scenario: Verify trello.com is available
When I issue a HTTP HEAD request for a resource with the URL 'https://trello.com/'
Then `${responseCode}` is equal to `200`

Scenario: API for board creation
Given request body: {
"key":"32cd4b695d772018dcf2cc92ba760c28" 
"token":"7a16bec65fa190d91b9e10e2826716c67537cf44bfeaa4e2a79804f08f911e3c"
"name":"Last board"
}

When I send HTTP POST to the relative URL '/1/boards/?key=32cd4b695d772018dcf2cc92ba760c28&token=7a16bec65fa190d91b9e10e2826716c67537cf44bfeaa4e2a79804f08f911e3c&name=last board'
Then the response code is equal to '200'