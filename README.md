# Dataset-of-bibliographic-networks

This repository contains a large sample of a bibliographic dataset collectef from Microsoft Academic Search (using their API-disconitnued as of summer 2015). Each subfolder represents a MySQL table and contains the dump of that table as well as the contained data in txt form.

The dataset is organized in network form, meaning that for an initial sample of 30,000 authors we collect their publications and their citing publications, the authors of the citing publications and their portfolios. Also, the co-authors of the initial sample were collected and their respective portfolios.

NOTE: in some folders the txt.bz2 is split into parts. You can put it back together with the following command:
$ cat home.tar.bz2.parta* >backup.tar.gz.joined
