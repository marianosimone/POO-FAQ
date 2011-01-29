NAME=FAQ-POO
OUTPUT=index.html
  
build:
	rst2html --stylesheet-path=./my-docutils.css $(NAME) $(OUTPUT)

.PHONY: clean

clean:
	rm $(OUTPUT)

