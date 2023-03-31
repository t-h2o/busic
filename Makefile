ADOC	=	asciidoctor --require=asciidoctor-diagram

DOCU	=	docs/README.adoc
INDEX	=	docs/index.html



doc:
	@printf "$(YELLOW)Generating page..$(DEFAULT)\n"
	@$(ADOC) $(DOCU) -o $(INDEX)
	@printf "$(GREEN)page done!$(DEFAULT)\n"

lilypond:
	@printf "$(YELLOW)Generating beautiful sheet..$(DEFAULT)\n"
	@lilypond --svg --output=docs lilypond/bar-blues.ly
	@lilypond --pdf --output=docs lilypond/bar-blues.ly
	@printf "$(GREEN)sheet done!$(DEFAULT)\n"




.PHONY: lilypond doc



#COLORS
RED     = \033[1;31m
GREEN   = \033[1;32m
YELLOW  = \033[1;33m
CYAN    = \033[1;36m
DEFAULT = \033[0m
