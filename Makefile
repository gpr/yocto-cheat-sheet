# Makefile -- Generate docsets

.PHONY: default
default: all

# Verbose mode
ifeq ($(V),1)
  Q =
else
  Q = @
endif

SRC = $(wildcard *.rb)
DCS = $(SRC:.rb=.docset)
TGZ = $(SRC:.rb=.docset.tgz)

ifeq ($(DEBUG),1)
  $(info [debug] Sources : $(SRC))
  $(info [debug] Docsets : $(DCS))
  $(info [debug] Archives: $(TGZ))
endif

# -----------------------------------------------------------------------------
# Rules

%.docset: %.rb
	@printf "%-20s %s\n" "CHEATSET" "$(^F)"
	$(Q)cheatset generate $<

%.docset.tgz: %.docset
	@printf "%-20s %s\n" "ARCHIVE" "$(@F)"
	$(Q)tar --exclude='.DS_Store' -cvzf $@ $<

# -----------------------------------------------------------------------------
# Targets

.PHONY: all
all: $(TGZ)

.PHONY: clean
clean:
	@printf "%-20s %s\n" "CLEAN"
	$(Q)rm -rf *.docset*
