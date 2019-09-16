# Current TODO List
### Monday Todo:
    * Watch routes video with soccer teams to see how to split view

### Services Form
    * Format for price as $ rather than string

### Booking Form
    * Research how to add day and time choices
    * Add validations to backend

### Routes
    *Add booking routes for individual bookings. A client will click on an individual booking to see the details.

### NavBar
    *Logout button should trigger fetch rather than a form

# Office hours
    *When do you have to use `this.handleChange.bind(this)` in the constructor?  Is this necessary only when there is a constructor? Why? 






# Models 
## Service Model
### Relationships
    has_many :clients -v1
    belongs_to :teacher - v2 
### Attributes
    :name - string,  - v1
    :category - string,  - v1
    :price - integer,  -v1
    :request_method - string,  -v2
    :client_ids, 
    :teacher_id - integer  - v2


## Client Model
### Relationships
    has_many :services -v1
    has_many :teachers through -v2
### Attributes
    :name - string,  -v1
    :password_digest, -v1
    :email - string -v1

## Teacher Model (Admin) - MAYBE OPTIONAL for first project build
### Relationships
    has_many :services -v2
    has_many :clients through services -v2

### Attributes
    :id -v2
    :name -v2

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

