all:


clean:
	rm blocks*

100mb:
	fallocate -l 100M blocks

1gb:
	fallocate -l 1G blocks

