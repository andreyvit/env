.PHONY: karabiner

karabiner:
	rm -rf  ~/Library/'Application Support'/Karabiner
	ln -s ~/env/Karabiner ~/Library/'Application Support'/
