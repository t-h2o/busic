ADOC	=	asciidoctor --require=asciidoctor-diagram

DOCU	=	docs/README.adoc
INDEX	=	docs/index.html

LILYPOND_FILE	=	lilypond/funky_town.ly


doc:
	@printf "$(YELLOW)Generating page..$(DEFAULT)\n"
	@$(ADOC) $(DOCU) -o $(INDEX)
	@printf "$(GREEN)page done!$(DEFAULT)\n"

docdocker:
	@printf "$(YELLOW)launch the asciidoctor/docker-asciidoctor docker image..$(DEFAULT)\n"
	@docker run --rm -v $(shell pwd):/documents/ asciidoctor/docker-asciidoctor make doc

lilypond:
	@printf "$(YELLOW)Generating beautiful sheet..$(DEFAULT)\n"
	@lilypond --svg --output=docs $(LILYPOND_FILE)
	@lilypond --pdf --output=docs $(LILYPOND_FILE)
	@printf "$(GREEN)sheet done!$(DEFAULT)\n"

lilyponddocker:
	@printf "$(YELLOW)launch the asciidoctor/docker-asciidoctor docker image..$(DEFAULT)\n"
	@docker run --rm -v $(shell pwd)/lilypond:/app -w /app jeandeaual/lilypond lilypond --svg funky_town.ly
	@docker run --rm -v $(shell pwd)/lilypond:/app -w /app jeandeaual/lilypond lilypond --pdf funky_town.ly
	@mv lilypond/{*pdf,*svg} docs/



.PHONY: lilypond doc



#COLORS
RED     = \033[1;31m
GREEN   = \033[1;32m
YELLOW  = \033[1;33m
CYAN    = \033[1;36m
DEFAULT = \033[0m
