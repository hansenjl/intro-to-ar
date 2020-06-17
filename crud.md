# CRUD

# Create
    POST  '/movies'  &  GET '/movies/new
    Model.create(params)

# Read
    GET '/movies/:id' & GET '/movies'
    @model = Model.find(params[:id]) #show
    @model = Model.find_by_id(params[:id]) #show
    @model = Model.find_by(id: params[:id]) #show
    @models = Model.all  # index

# Update
   PUT/PATCH '/movies/:id'  & GET '/movies/:id/edit'
   model = Model.find(params[:id])
   model.update(params)
   model.attribute=(params[:attribute])
   model.save

# Delete
    DELETE '/movies/:id'
    model = Model.find(params[:id])
    model.destroy

| Verb | Route| View|
|------|------|-------|
| GET | /movies | index |  #Get all the movies
| GET | /movies/:id | show|  #Get 1 movie   '/movies/5'
| GET | /movies/new | new | #Get the form to make a movie
| POST | /movies |  | #Create a movie
| GET | /movies/:id/edit | edit | #Get a form to edit 1 movie
| PUT/PATCH | /movies/:id |  | #update 1 movie
| DELETE | /movies/:id |  | #delete 1 movie



# To make Patch and Delete Requests
In your form:
```
<input type="hidden" name="_method" value="PATCH">
```
In your config.ru:
```
use Rack::MethodOverride
```