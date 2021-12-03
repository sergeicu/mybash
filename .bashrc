# .bashrc



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Configure based on OS of computer you are on (for centOS 6 versus 7)
KERNELRELEASE=`/bin/uname -r`
MACHINE=`/bin/uname -i`
OStemp="${KERNELRELEASE%.*}"
OSVERSION="${OStemp##*.}"

# CRKIT - 2021
source /opt/el7/pkgs/crkit/2021/crkit-master/bin/crkit-env.sh

# CRKIT - export old functions (not in current release)
export crlConvertBetweenFileFormats=/opt/el7/pkgs/crkit/2021/crkit-master/bin/crlConvertBetweenFileFormats
#export crlConvertBetweenFileFormats=/opt/el7/pkgs/crkit/nightly/20160503/bin/crlConvertBetweenFileFormats

#matlab 
#export PATH=/opt/matlab/current/bin:${PATH}

#itksnap 
ITKSNAPDIR=/opt/el7/pkgs/itksnap/itksnap-3.8.0
LD_LIBRARY_PATH=/lib:/usr/lib:/lib64:/usr/lib64/:${ITKSNAPDIR}/lib/snap-3.8.0
QT_PLUGIN_PATH=""
#${ITKSNAPDIR}/bin/itksnap
export PATH=${ITKSNAPDIR}/bin/:${PATH}
#export PATH=/opt/x86_64/pkgs/itksnap/itksnap-3.6.0-rc1-20161029-Linux-x86_64/bin/:${PATH}
#export PATH=/opt/el7/pkgs/itksnap/itksnap-3.8.0/bin/:${PATH}
#export PATH=/opt/el7/pkgs/itksnap/itksnap-3.8.0-20190612-Linux-gcc64/bin/:${PATH}

#freesurfer
export FREESURFER_HOME=/opt/el7/pkgs/freesurfer/freesurfer_6.0/
#### REMOVE COMMENT BELOW TO GET FREESURFER TO INITIALIZE!!! 
#source $FREESURFER_HOME/SetUpFreeSurfer.sh
#export PATH=/opt/el7/pkgs/freesurfer/freesurfer_6.0/bin:${PATH}
export PATH=$FREESURFER_HOME/bin:${PATH}


#sublime
export PATH=/home/ch215616/w/soft/sublime_text_3:${PATH}
alias sublime="/home/ch215616/w/soft/sublime_text_3/sublime_text"
alias ss="/home/ch215616/w/soft/sublime_text_3/sublime_text"

#pycharm
export PATH=/home/ch215616/w/soft/pycharm-community-2019.2.3/bin:${PATH}
alias pycharm="/home/ch215616/w/soft/pycharm-community-2019.2.3/bin/pycharm.sh &"

# ITK
export ITK_DIR=/opt/x86_64/pkgs/itk/4.3.1/gcc-release/lib:\
/opt/x86_64/pkgs/itk/current/gcc-release/lib
export ITK_BINARY_DIR=$ITK_DIR
LD_LIBRARY_PATH=$ITK_DIR:${LD_LIBRARY_PATH}

# VTK 5.0.2 with Qt 4.2.1
export VTK_DIR=/opt/x86_64/pkgs/vtk/current/
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$VTK_DIR/lib
PATH=$PATH:$VTK_DIR/bin

# FSL
export FSLDIR=/opt/el7/pkgs/fsl/fsl-5.0.11/
PATH=${FSLDIR}/bin:$PATH
#REMOVE cp -R ${FSLDIR}/etc/fslconf/fsl.sh ~/abd/soft/fsl-5.0.11/ 
#UNCOMMEND THIS AND COMMENT THE BELOW LINE::: source ${FSLDIR}/etc/fslconf/fsl.sh
#source ~/w/soft/fsl-5.0.11/fsl.sh
source /fileserver/fastscratch/ipek/software/fsl.sh

# flywheel 
if [ -d /opt/el7/pkgs/flywheelcli/linux_amd64 ] ; then
   export PATH=${PATH}:/opt/el7/pkgs/flywheelcli/linux_amd64
fi

#DCMDUMP 
export DCMDICTPATH=/opt/el7/pkgs/dcmtk/master/usr/local/share/dcmtk/dicom.dic:$DCMDICTPATH​
PATH=/opt/el7/pkgs/dcmtk/master/usr/local/bin/:$PATH


# IRTK basic
export PATH=/home/ch215616/w/soft/irtk:$PATH

#PYTHONPATH (please note that PYTHON LIBS are loaded in conda separately) 
export PYTHONPATH="${PYTHONPATH}:/home/ch215616/w/code/svtools/:/home/ch215616/fastscratch/code/svtools/"
export PYTHONPATH="${PYTHONPATH}:/home/ch215616/w/code/ext/"
#export PYTHONPATH="${PYTHONPATH}:/home/ch215616/w/code/svtools/:/home/ch215616/w/code/RoAR/git_repo/utils/:/home/ch215616/w/code/RoAR/git_repo/:/home/ch215616/w/code/SynthSeg/" # old 

#PYTHON scripts (to exec from command line)
export PATH=/home/ch215616/w/code/svtools/:${PATH}


#MY TOOLS 
export PATH=/home/ch215616/w/code/ext/:$PATH


# Clemente's Bash 
PATH=$PATH:\
$HOME/bin:\
/opt/matlab/current/bin:\
/opt/x86_64/bin:\
#/usr/local/bin/:\
/opt/el7/pkgs/crlDcm:\
/opt/dcm2niix/build/bin:\
/opt/el7/pkgs/dcm2niix/:\
#/opt/x86_64/pkgs/afni:\
/opt/x86_64/pkgs/afni_latest:\
#/opt/x86_64/pkgs/itksnap/itksnap-3.6.0-rc1-20161029-Linux-x86_64/bin:\
/home/ch135192/ShapeTools/ShapeTools/Software:\
/home/ch135192/jdk1.6.0_20/bin:\
/fileserver/fetal/bin:\
/fileserver/projects/xavier/Code/build/crlRegistration/bin:\
/home/ch137122/MisterICentos7/:\
/home/ch162835/Software/rar:\
/home/ch155417/workspace/FetalRegistration/FetalInitializer/FetalInitializer/Build/bin:\
/opt/Slicer-4.8.1-linux-amd64:\
/opt/el7/pkgs/fibernavigator/bin:\
/opt/trackvis:\
/opt/dtk:\
/opt/minc/1.9.16/bin:\
/opt/itksnap-3.8.0-20190612-Linux-gcc64/bin:\
/fileserver/fetal/scripts/:



# CUDA
#export CUDA_HOME=/usr/cuDNN6/
#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/cuDNN6/lib64

# RAYAN -> ANKARA - commented the below out and updated with newer LD_LIBRARY_PATH (sent by sila on 14 dec to me )
#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64/

# ADDED TO ANKARA FROM SILA'S SETUP
LD_LIBRARY_PATH=/usr/cuDNN6/lib64/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64/
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.1/lib64/
# readlink -f /usr/local/cuda -> tells you what you cuda local library actually points to


# Export
export PATH
export LD_LIBRARY_PATH

# required for BOBYQA estimation in matlab (sila ivim code)
export NLOPT_LIB=/home/ch169807/moti/nlopt-2.4.1/build/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$NLOPT_LIB

################################# ALIASES ############################################
alias ic="ssh sv407@shell2.doc.ic.ac.uk"
alias juplabic="ssh -N -f -L 8891:localhost:8891 sv407@shell2.doc.ic.ac.uk"
alias jupic="ssh -N -f -L 8893:localhost:8893 sv407@shell2.doc.ic.ac.uk"
alias juplabrayan="ssh -N -f -L 8892:localhost:8892 ch215616@rayan" 
alias chrome="/home/ch215616/w/soft/chrome/opt/google/chrome/google-chrome --no-sandbox %U &"
alias mac="hostname"
alias roar="cd /home/ch215616/w/code/RoAR/git_repo/"
alias abd="cd /fileserver/abd/serge/IVIM_data/IVIM_data/" 
alias crlconvert2="/opt/el7/pkgs/crlDcm/crlDcmConvert" 
#alias crlconvert="/opt/x86_64/pkgs/crkit/nightly/20170107/crkit/bin/crlConvertBetweenFileFormats"
alias crlconvert="/opt/el7/pkgs/crkit/2021/crkit-master/bin/crlConvertBetweenFileFormats"
alias t="tmux ls" 
alias tt="tmux a -t"
alias nn="nautilus . &"
alias workspaces=list_workspaces.py
alias workspaces_clean="mv ~/.jupyter/lab/workspaces/labworkspacesauto-* $trash"

alias startdocker="sudo systemctl start docker"


# trash command 
export trash=/fileserver/fastscratch/serge/trash

# ipek files
alias ipek="cd /fileserver/fastscratch/ipek/software/crl_estimation_methods/crl-ivim-estimation-methods/"
alias ipek2="cd /fileserver/fastscratch/ipek/"

# itksnap 
alias ii=itksnap 

# docker 
alias dc="sudo docker ps -a"  #show all containers 
alias di="sudo docker images" #show all images 
alias dr="sudo docker run --rm" #run container  
alias dri="sudo docker run -it --rm" #run container in interactive mode 
alias driv="sudo docker run -it --rm -v" #run container in interactive mode WITH path


#download to local 
export download=~/code/IVIM_basics_june_2020/case059/temp_for_download

        # ALIASES 'ls' 
alias lp="ls --color -lAhtr"
alias ll="ls --color -tr1"
alias ls="ls --color -1"

        # ALIASES 'cd'
alias ..="cd .."
alias juprem="jupyter notebook --no-browser --port=8894"
alias juplabrem="jupyter lab --no-browser --port=8892"
alias jup_barbieri="conda activate barbieri_temp; jupyter notebook --no-browser --port=8895" 
alias jup_tch2="conda activate tch2; jupyter lab --no-browser --port=8895" 


# Research computing 
alias rc="ssh ch215616@e2.tch.harvard.edu" # login to research computing
alias e2="ssh ch215616@e2.tch.harvard.edu" # login to research computing
alias rcdir="rclone copy . d2:/temp/ --bwlimit 8650k --tpslimit 8" # COPY CURRENT DIRECTORY TO TEMP DIR on GOOGLE DRIVE 
alias rce2="rclone copy $e2drive MyDrive:$gdrive --bwlimit 8650k --tpslimit 8"
alias rclone_mount="rclone mount --daemon d:/serge/ /fileserver/fastscratch/serge/drive/d; rclone mount --daemon d2: /fileserver/fastscratch/serge/drive/d2"
alias rclone_unmount="fusermount -u /fileserver/fastscratch/serge/gdrive/drive/; fusermount -u /fileserver/fastscratch/serge/gdrive/drive2/;"
alias rc2remote="rsync -vrth -pog --copy-links" # copy all files to remote and preserve permissions, owner and group; make symlinks into hard links 
alias rc2source="rsync -vrth --ignore-existing" # copy only non existing files from ~/fs/copy to source; if you want to also update with newer files - use "--update" option instead, but it is not recommended as it may overwrite symlinks with actual files 
alias rc_to="rsync -e ssh -auz $src ch215616@e2.tch.harvard.edu:/home/ch215616/$dest"
alias rc_from="rsync -e ssh -auz ch215616@e2.tch.harvard.edu:/home/ch215616/$src $dest"
alias bb="ssh boreas"
export abd=/fileserver/abd/serge/
export fs=/fileserver/fastscratch/serge/
export war=/fileserver/Rad-Warfield-e2/Public/serge/
alias rctensorboard="ssh -N -f -L 6005:localhost:6006 ch215616@e2.tch.harvard.edu"

# IVIM related 
alias fbm=/fileserver/abd/bin/ivimFBMMRFEstimator

# tmux - rename pane
alias rename-pane="printf '\033]2;%s\033\\'" 
alias rp="printf '\033]2;%s\033\\'" 


# Unfinished - functions 
#function rc_to { rsync -e ssh -auz $src ch215616@e2.tch.harvard.edu:/home/ch215616/$dest }
#export -f rc_to
#function rc_from { rsync -e ssh -auz ch215616@e2.tch.harvard.edu:/home/ch215616/$src $dest }
#xport -f rc_from
# rc_to () { 
# 	rsync -e ssh -auz "$src" ch215616@e2.tch.harvard.edu:/home/ch215616/"$dest"
# 	}
# xrc_to () {
#     rsync -e ssh -auz "$src" ch215616@e2.tch.harvard.edu:/home/ch215616/"$dest"
#     }	

alias servers="echo ganymede boreas eurus io zephyr auster      crlfs7 lasker bayes     leko dingo"

alias mypath='echo "${PATH//:/$'\n'}"'
alias nv="nvidia-smi"
alias nvl="nvidia-smi -l"
alias rm='rm -i'
alias xkboff='setxkbmap'
#alias xkb='xkbcomp /home/ch215616/w/soft/xkb-halfqwerty/halfqwerty_my.xkb $DISPLAY 2>/dev/null'
alias xkb='xkbcomp /home/ch215616/w/soft/mirrorboard/mirrorboard_test.xkb $DISPLAY 2>/dev/null'

# crl tool for file conversion (used mostly to convert from vtk to nii)
alias crlvtk=/opt/x86_64/pkgs/crkit/nightly/20170107/crkit/bin/crlConvertBetweenFileFormats


	# Other kinds of useful aliases: 
alias lsn='ls | sort --version-sort -f'
alias lsd='ls -d */'
################################# ALIASES END ############################################





#From Clemente's bash 
# User specific aliases and functions
move_to_trash () {
    mv -iv "$@" ~/.local/share/Trash/files
    }
compress_tar () {
    tar -czvf "$1" "$2"
    }
decompress_tar () {
    tar -zxvf "$1"
    }
lock () {
    dbus-send --type=method_call --dest=org.gnome.ScreenSaver /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock
    }
mkcd () {
    mkdir $1
    cd $1
    }
mi () {
    MisterI "$@" 2> /dev/null
    }
check () {
    MisterI "$@" 2> /dev/null
    crlImageStats "$@"
    }


##### my own bash functions 
export PATH=$PATH:/home/ch215616/w/code/bash



##### misc
# disable write permissions for 'other users' but otherwise keep in tact 
umask 0002 


##### SNAP apps
export PATH=$PATH:/snap/bin/


##### some bash settings imported from IC 
############################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\$"
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "
fi
unset color_prompt force_color_prompt


# If this is an xterm set the title to user@host:dir

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#### fancy prompt that displays pwd 
#Set prompt 
PS1="(\h)		\w\n$ "


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/ch215616/miniconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
__conda_setup="$('/home/ch215616/w/miniconda2/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
#    if [ -f "/home/ch215616/miniconda2/etc/profile.d/conda.sh" ]; then
    if [ -f "/fileserver/abd/serge/miniconda2/etc/profile.d/conda.sh" ]; then
#    if [ -f "/home/ch215616/w/miniconda2/etc/profile.d/conda.sh" ]; then
#        . "/home/ch215616/miniconda2/etc/profile.d/conda.sh"
#        . "/home/ch215616/w/miniconda2/etc/profile.d/conda.sh"
        . "/fileserver/abd/serge/miniconda2/etc/profile.d/conda.sh"
    else
#        export PATH="/home/ch215616/miniconda2/bin:$PATH"
#        export PATH="/home/ch215616//w/miniconda2/bin:$PATH"
        export PATH="/fileserver/abd/serge/miniconda2/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


conda activate tch2_yml



# SINGULARITY BINDS https://sylabs.io/guides/3.0/user-guide/bind_paths_and_mounts.html
#export SINGULARITY_BIND="/w,/home/ch215616:/mnt"



# remove horrible green from 'other' group permissions of writable files
LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS
# source  https://askubuntu.com/questions/466198/how-do-i-change-the-color-for-directories-with-ls-in-the-console








####### UNUSED (OLD)

# CRKIT - older (the one i used before) - REMOVING IT 
# if [[ $OSVERSION = *7* ]] ; then
#     lastbuild=`ls /opt/el7/pkgs/crkit/nightly/ | tail -n1`
#     source /opt/el7/pkgs/crkit/release-current/bin/crkit-env.sh
# #   source /opt/el7/pkgs/crkit/nightly/${lastbuild}/crkit/bin/crkit-env.sh
#     else
#     lastbuild=`ls /opt/x86_64/pkgs/crkit/nightly/ | tail -n1`
# #   source /opt/x86_64/pkgs/crkit/nightly/${lastbuild}/crkit/bin/crkit-env.sh
#     source /opt/x86_64/pkgs/crkit/CRKIT-1.6.0-ALL/bin/crkit-env.sh
# fi



# ALL PATHS HERE HAVE CHANGED AND NO LONGER FUNCTIONAL
# # source /opt/el7/pkgs/crkit/nightly/20171027/crkit/bin/crkit-env.sh
# # source /opt/x86_64/pkgs/crkit/nightly/20171001/crkit/bin/crkit-env.sh
# if [ -d /opt/${OSVERSION} ] ; then
#     HWPLATFORM=${OSVERSION}
#     elif test ! `/bin/uname -i` ; then
#     HWPLATFORM=i386
#     else
#     HWPLATFORM=`/bin/uname -i`
# fi
# export HWPLATFORM
# export PATH=$PATH:/opt/$HWPLATFORM/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/$HWPLATFORM/lib
# export MANPATH=$MANPATH:/opt/$HWPLATFORM/man
# export MANPATH=/usr/share/man:$MANPATH

# OLD CONFIG - difficult to read 
#itksnap
#/opt/x86_64/pkgs/itksnap/itksnap-3.6.0-rc1-20161029-Linux-x86_64/bin/itksnap 
#matlab 
#PATH=$PATH:/opt/matlab/current/bin:/opt/x86_64/pkgs/itksnap/itksnap-3.6.0-rc1-20161029-Linux-x86_64/bin/:/home/ch215616/miniconda2/bin

# added by jill
export PATH=/home/ch215616/.local/bin:$PATH

# added by jill
export PATH=/home/ch215616/.local/bin:$PATH
