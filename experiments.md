Tue Oct  9 10:55:42 PDT 2018

# SLURM save and load experiment

I can save and load the material on the network file system where my home directory is, or on the local node hard drives.

Here are some questions I have:

Will the NFS serve multiple large data files in serial or in parallel?

Consider two jobs.
Let S be the size of the whole data, and g be the number of groups (matching notation in my other write up)
The serial job will save g groups of data, each of size
It 

I can find out by checking the time stamp when each file is loaded / saved for both large and small .
I can do this 

for a job with only one node, and for a job with n nodes.
If the job with n nodes takes n times longer for 

The timing results may depend on external things that I can't control, for example the locations of the files in the RAID array, or the load on the system from other users.
