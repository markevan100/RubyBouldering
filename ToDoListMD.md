Ok, so, I'm finishing up the Codecademy lesson on Ruby. I did it once in Spain, which was helpful. However, when I did it then I didn't understand a lot of what they were teaching. So, I decided to do it again this month and take notes (which was easier because I had a frame of reference.) It went much better. And faster.

I signed up for the PRO version, which gives me access to a final project. For the Javascript course (which I am about 3/4 of the way through) the PRO projects are imbedded into the course. However, it turns out that for the Ruby class there are no imbedded projects. Instead, there is one big final project which takes you out of the Codecademy environment and has you use 'real' workflow to complete the project.

To more closely mimic that 'real' workflow, I am going to try to journal my experience here for us (read, to you, but really also for me.)

So, what, you ask, will I be ATTEMPTING to do? Just that! Create a ToDo list. I'll use Atom to write the program. The first set of instructions is that I will need to create two different classes. Those will be Lists and Tasks. Next, I have this set of 'recommendaitons': 

    **List Class**
    Create a list
    Add task to list
    Show all tasks
    Read a task from a file
    Write a list to a file
    Delete a task
    Update a task
    
    **Task Class**
    Create a task item

Under each class, my assumption is that I will need to create both an attr_reader (or other option, ie. writer, accessor, depending on need) and an initialize method. So, I'm starting with this. 

```ruby
#class should have: attr_accessor and initialize
class List

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

#class should have: attr_accessor and initialize
class Task

  attr_accessor :description

  def initialize(description)
    @description = description
  end

end
```

I've also been told that I will need to create a `.new` method for at least my List class. I'm going to leave that be for a bit and come back to it. My next task it to set up an `all_tasks` array. This will be new for each List object, so I'm going to put it in the initialize method. I guess I'm going to give it an @ to make in an instance variable (is this right?) because I want it to be connected to each instance of the List class that I initiate. I also need to create a reader for this. Should I do that manually or use at attr_? I think I'll do it manually because it isn't an attribute of the instance that the user will be actually setting when they initiate (like name), it'll just be created in the background. This is probably stupid logic. Anyway, now I have this:

```ruby
class List

  attr_accessor :name

  def initialize(name)
    @name = name
    @all_tasks = []
  end

  def all_tasks
    @all_tasks
  end 

end
```

Ok, time to do some adding. I first came up with this:

```ruby
def add(task_name, list_name)
    list_name << task_name
  end
```

But then I realized, what am I calling that method on if I have both the task and the list as arguments? That doesn't make any sense. Ok, I need to call it on one of them, which would look something like this `list.add(this_task)`. But, in the code in the method, how do I reference my list if I don't have it as an argument? `.self`? `.push`?

How about something easy like this:
```ruby
  def add(task_name)
     @all_tasks << task_name
  end
  ```
  
  So, that seems to make sense. Except how does it know which list's @all_tasks array to add to if I have initialized more than one? Because I'm calling the method on that list. Hmmmm, starting to make some sense. That might work. Let's throw this baby in the console and try it out. 
  
![screenshot] (https://drive.google.com/file/d/12r3deOy2pcnI3lZjT-CmFO2t86Yk2_Hl/view?usp=sharing)

