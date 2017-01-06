# Steps to Reproduce Issue

First install gems.
```
$ bundle install
```

Then use torquebox run.
```
$ bundle exec torquebox run
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=2048m; support was removed in 8.0
15:51:29.538 INFO  Registered web context /
15:51:29.542 INFO  Starting TorqueBox::Web::Server 'default'
15:51:29.551 INFO  XNIO version 3.4.0.Beta1
15:51:29.608 INFO  XNIO NIO Implementation Version 3.4.0.Beta1
15:51:29.939 INFO  Listening for HTTP requests on localhost:8080
```

Ctrl-C
```
^CThis runs with 'torquebox run' but not as a jar
```

Now build the jar.
```
$ bundle exec torquebox jar --name example.jar
Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=2048m; support was removed in 8.0
15:54:07.837 INFO  Bundling gem dependencies
15:54:14.143 INFO  Writing /Users/andreleblanc/sandbox/torquebox-exit-example/example.jar
```

Run the jar.
```
$ java -jar example.jar
15:55:39.025 INFO  [org.projectodd.wunderboss] (main) Initializing application as ruby
15:55:44.417 INFO  [org.projectodd.wunderboss.web.Web] (main) Registered web context /
15:55:44.419 INFO  [TorqueBox::Web::Server] (main) Starting TorqueBox::Web::Server 'default'
15:55:44.584 INFO  [TorqueBox::Web::Server] (main) Listening for HTTP requests on localhost:8080
``` 

Ctrl-C (message not printed)
```
^C%
```



