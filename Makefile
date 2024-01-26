.PHONY: run setup-zsh setup-nvm setup-eza
run:
	chmod +x ./setup-brew.sh && ./setup-brew.sh
	
setup-zsh:
	chmod +x ./setup-zsh.sh && ./setup-zsh.sh

setup-nvm:
	chmod +x ./setup-nvm.sh && ./setup-nvm.sh

setup-eza:
	chmod +x ./setup-eza.sh && ./setup-eza.sh

setup-os:
	chmod +x ./setup-os.sh && ./setup-os.sh

setup-amplify:
	chmod +x ./setup-amplify.sh && ./setup-amplify.sh

setup-py:
	chmod +x ./setup-py.sh && ./setup-py.sh
