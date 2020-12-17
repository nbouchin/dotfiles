#!/usr/bin/bash

source plugins

print_usage() {
    echo "Usage:"
}

update() {
    # Iterate through keys
    for owner in ${!plugins[@]}
    do
	# If the plugin is not installed, install it.
	if [ ! -d "${PLUG_START_PATH}/${plugin}" ]; then
	   echo -e "${plugin} is missing, installing it..."
    	   install ${atom}
    	fi
	declare plugin=${plugins[${owner}]}
    	declare atom=${owner}/${plugin}
	&>/dev/null pushd ${PLUG_START_PATH}/${plugin}
    	git fetch origin
    	if [[ $(git status) != *"up to date"* ]]; then
    	    echo -ne "Updating ${plugin}"
    	    &>/dev/null git checkout master && &>/dev/null git pull
    	    echo -e "\r${CHECK_MARK} Updated ${plugin}"
    	    nothing_to_update=0
    	fi
    	&>/dev/null popd    
    done

    if [ ${nothing_to_update} == 0 ]; then
        echo -e "${CHECK_MARK} Updates done"
    else
        echo -e "${CROSS_MARK} No updates available"
    fi
}

install() {
    # Iterate through keys
    for owner in ${!plugins[@]}
    do
	declare plugin=${plugins[${owner}]}
    	declare atom=${owner}/${plugin}

	if [ ! -d "${PLUG_START_PATH}/${plugin}" ]; then
	   nothing_installed=0
	   echo -ne "Installing ${plugin}"
	   &>/dev/null git clone --recursive https://github.com/${atom}.git \
	   --recursive ${PLUG_START_PATH}/${plugin}
    	   case ${plugin} in
    	       "YouCompleteMe")
    	   	ln -isv $PWD/ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
		python3 ~/.vim/pack/my-plugins/start/YouCompleteMe/install.py \
		--clang-complete
    	       ;;
    	       "vim-clang-format")
    	   	ln -isv $PWD/clang-format ~/.clang-format
    	       ;;
    	       "vim-snippets")
		ln -isv $PWD/c-libft.snippets \
		$PLUG_START_PATH/vim-snippets/UltiSnips/c-libft.snippets
		ln -isv $PWD/cpp-personal.snippets \
		$PLUG_START_PATH/vim-snippets/UltiSnips/cpp-personal.snippets
    	       ;;
    	   esac
    	   echo -e "\r${CHECK_MARK} ${plugin} Installed"
	fi
    done

    if [ ${nothing_installed} == 0 ]; then
        ln -isv $PWD/vimrc ~/.vimrc
        echo -e "${CHECK_MARK} Installation done"
    else
        echo -e "${CROSS_MARK} Nothing to install"
    fi
}

main() {
    declare -r CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
    declare -r CROSS_MARK="\033[0;31m\xE2\x9D\x8C\033[0m"
    declare -r PLUG_START_PATH="$HOME/.vim/pack/my-plugins/start"

    declare nothing_installed=1
    declare nothing_to_update=1
    declare update=0
    declare install=0
    declare usage=0

    for option in "$@"
    do
	case ${option} in
    	    -u|--update)
    	    update=1
    	    shift
    	    ;;
    	    -i|--install)
    	    install=1
    	    shift
    	    ;;
    	    *)
		echo -e "Invalid option -- '${option}'"
		usage=1
    	    ;;
    	esac
    done

    if [ ${usage} == 1 ];then
	print_usage
	exit
    fi
    if [ ${install} == 1 ]; then
	echo -e "Installing vim configuration..."
	mkdir -pv ~/.vim/undodir
    	mkdir -pv ~/.vim/swapdir
    	mkdir -pv ~/.vim/pack/my-plugins/{opt,start}
    	mkdir -pv ~/.config/gtk-3.0

	install
    elif [ ${update} == 1 ]; then
	echo -e "Checking for updates..."
        update
    fi
}

main $@
