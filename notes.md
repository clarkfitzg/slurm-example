host name is `gauss.cse.ucdavis.edu`.

Login to the head node with:

```
ssh user@gauss.cse.ucdavis.edu
```

You should see a bash shell prompt with `$`.
Enter commands here.
From the prompt at the head node use `srun` to begin an interactive R session on a worker node.
Do not copy and paste the `$`

```
$ srun R --vanilla
```

Now we are in an interactive R session on a worker node.
Verify this by entering an R command:

```
> system("hostname")
c0-11
```

This is different from the hostname `gauss` that we logged into, showing we are on a worker node.

