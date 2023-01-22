build:
	echo "Deleting old publication"
	rm -rf public
	mkdir public
	git worktree prune
	rm -rf .git/worktrees/public
	echo "Checking out the master branch into public"
	git worktree add -B master public origin/master
	echo "Removing existing files"
	rm -rf public/*
	echo "Generating site"
	hugo

commit: build
	echo "Updating the master branch"
	cd public && git add --all && git commit -m "Publishing to master (make deploy)"

publish: commit
	git push --all
