# Quote of the Day
* Users will be able to save their favorite quotes with this app.

## Domain Modeling
 User --< UserQuote >-- Quote

### Attributes
* User: name (str)
* UserQuote: user_id (int), quote_id(int)
* Quote: author (str), body (str)

### User Stories
Users will be able to:
* Have a homepage with their favorite quotes
* Be able to browse new quotes
* Be able to add and remove favorite quotes
* Look up definitions of words via search
* View the Quote of the Day upon login
* Watch an ad, after adding a 10th word to its favorite list

