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
DCS = $(SRC:.rb=.docset/Contents/Info.plist)
TGX = $(SRC:.rb=.docset.tar.xz)

# -----------------------------------------------------------------------------
# Rules

%.docset/Contents/Info.plist: %.rb
	@printf "%-20s %s\n" "CHEATSET" "$(^F)"
	$(Q)cheatset generate $<

%.docset.tar.xz: %.docset | %.docset/Contents/Info.plist
	@printf "%-20s %s\n" "ARCHIVE" "$(@F)"
	$(Q)tar cJf $@ $<

# -----------------------------------------------------------------------------
# Targets

.PHONY: all
all: $(DCS)

.PHONY: archive
archive: $(TGX)

.PHONY: clean
clean:
	@printf "%-20s %s\n" "CLEAN"
	$(Q)rm -rf *.docset*
