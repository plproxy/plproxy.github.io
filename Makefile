
all: doc

clean:
	rm -rf _site


init:
	bundle install --path .gems

serve:
	bundle exec jekyll serve

# printf fmt for header gen
hdr = '--' '---\nlayout: %s\ntitle: PL/Proxy %s\n---\n'

SRC = ../plproxy
DOC = $(SRC)/doc

doc:
	( printf $(hdr) simple "config"; cat $(DOC)/config.md ) > config.md
	( printf $(hdr) simple "FAQ"; cat $(DOC)/faq.md ) > faq.md
	( printf $(hdr) simple "Tutorial"; cat $(DOC)/tutorial.md ) > tutorial.md
	( printf $(hdr) simple "Syntax"; cat $(DOC)/syntax.md ) > syntax.md
	( printf $(hdr) simple "ToDo list"; cat $(DOC)/todo.md ) > todo.md
	( printf $(hdr) simple "Changelog"; cat $(SRC)/NEWS.md ) > changelog.md

