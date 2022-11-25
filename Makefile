.PHONY: run setup-zsh setup-nvm setup-exa
run:
	chmod +x ./setup-brew.sh && ./setup-brew.sh
	
setup-zsh:
	chmod +x ./setup-zsh.sh && ./setup-zsh.sh

setup-nvm:
	chmod +x ./setup-nvm.sh && ./setup-nvm.sh

setup-exa:
	chmod +x ./setup-exa.sh && ./setup-exa.sh
