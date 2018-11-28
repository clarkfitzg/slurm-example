host name is `gauss.cse.ucdavis.edu`.

Copy and pasting is fine, just start after the `$`.

Login to the head node with:

```
clark@mylaptop$ ssh clarkf@gauss.cse.ucdavis.edu
```

You should see a bash shell prompt with `$`.
Enter commands here.
From the prompt at the head node use `srun` to open up a bash session on a
worker node.

```
clarkf@gauss$ srun --pty bash
```

Now we have a prompt at a worker node
Verify this by entering an R command:

```
clarkf@c0-11$ hostname
c0-11
```

This is different from the hostname `gauss` that we initially logged into
with `ssh`. It shows we are on a worker node named c0-11.

`squeue` will tell me about the jobs that I have running or in the queue.
Typically we would run this from the head node, but we can also run it in the worker.

```
clarkf@c0-11$ squeue
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
           2059569     debug     bash   clarkf  R       8:48      1 c0-11
```

I have one entry for the one bash shell that I started with `srun`.

If I made a mistake I can kill this job.

```
scancel 2059569
```
