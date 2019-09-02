# Models 
## Service Model
### Relationships
    has_many :clients
    belongs_to :teacher
### Attributes
    :name - string, 
    :category - string, 
    :price - integer, 
    :request_method - string, 
    :client_ids, 
    :teacher_id - integer 


## Client Model
### Relationships
    has_many :services
    has_many :teachers through 
### Attributes
    :name - string, 
    :password_digest, 
    :email - string

## Teacher Model (Admin) - MAYBE OPTIONAL for first project build
### Relationships
    has_many :services
    has_many :clients through services

### Attributes
    :id
    :name

# What does the app do?
The app will list available services that clients and signup for or request additional information
- Admin/teacher 
    - can create services and edit them
    - View list of clients and their services
    - post events (similar to blog)
    - stretch goal: Can schedule and post available dates and times
- Client 
    -can sign in 
    -search for services by category
    - can add services to shopping cart
    - stretch goal: can leave review
    -stretch goal: can schedule time and date for service
-
