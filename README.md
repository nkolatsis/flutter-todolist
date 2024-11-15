# todo_with_bloc

## Possible extensions:
- Add ObjectBox db
- Add a service locator (get_it) 
- Convert Cubit to standard BLoC


### Add ObjectBox db
Probably need to use a controller(or service locator) and preferences to switch between isar and objectbox.

- secondary addition: maybe create a settings page that allows the user to seemlessly switch DBs

### Add a service locator (get_it) 
What I like to do is to put the initialization into a service locator (get_it) and then provide i.e. the database instance via get_it,   instead of injecting it via constructor in a cascading way down to the page,  I also provide the bloc that way, so no need for BlocProvider anymore on top of your app. BlocBuilder also accepts a bloc intance as parameter, which again is pulled from the service locator and injected that way.

For me it adds to the separation of concern principle, especially when adding more features/pages to your app.

### Convert Cubit to standard BLoC
Need to understand the differences between the two better

ChatGPT explanation: BLoC vs Cubit - https://chatgpt.com/share/6734b2b5-4e18-8007-b798-292c36969ef0