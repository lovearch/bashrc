#!/bin/bash
#===============================================================================
#
#          FILE:  mybashrc.sh
#
#         USAGE:  put it to your home directory
#
#   DESCRIPTION:
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Karl Zheng (), ZhengKarl#gmail.com
#          BLOG: http://blog.csdn.net/zhengkarl
#         WEIBO: http://weibo.com/zhengkarl
#       COMPANY: Meizu
#       CREATED: 2012年05月21日 19时12分43秒 CST
#      REVISION:  ---
#===============================================================================

if [ "$SHELL" != "/bin/bash" ];then
	echo "the SHELL is not bash! exit!!"
fi

unset MAILCHECK

# . /etc/bash_completion
shopt -s dotglob
shopt -s histappend
shopt -s histreedit
shopt -s histverify
shopt -s lithist

set expand-tild on

stty -ixon

export GTAGSFORCECPP=
export LANG="zh_CN.UTF-8"
export LANGUAGE="zh_CN.UTF-8"
export LC_MESSAGES="C"

export MYNICKNAME="karlzheng"
export MYUSERNAME=$(whoami)

#export ANDROID_LOG_TAGS='Sensors:V *:S'
export ARCH=arm
#http://huangyun.wikispaces.com/%E7%BB%99man+pages%E5%8A%A0%E4%B8%8A%E5%BD%A9%E8%89%B2%E6%98%BE%E7%A4%BA
export BROWSER="$PAGER"
#export CROSS_COMPILE=arm-none-linux-gnueabi-
export CROSS_COMPILE=arm-linux-gnueabi-
export D=~/桌面/
export EDITOR=vim
export GRADLE_HOME=${HOME}/bk/sw/gradle-1.6
#命令文件最大行数
export HISTSIZE=5000000
#最大命令历史记录数
export HISTFILESIZE=5000000
export HISTCONTROL="erasedups:ignoreboth"
#export JAVA_HOME=${HOME}/bk/sw/jdk1.7.0_25/
export JAVA_HOME=${HOME}/bk/sw/jdk1.6.0_45/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./:
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;33m'
export PAGER="`which less` -s"
export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
#export PROMPT_COMMAND="history -a;history -n;$PROMPT_COMMAND"
export PS4='+[$LINENO]'
export SVN_EDITOR=/usr/bin/vim

export d=~/桌面/
export desktop=~/桌面/
export dl=~/下载/
export imgout=out/target/product/

#add other info here just for android
#export ANDROID_PRODUCT_OUT=out/target/product/
#export ANDROID_SWT=/home/${MYUSERNAME}/svn/app_group_android/Eclair/out/host/linux-x86/framework
#export ANDROID_SWT=/media/cdriver/work/software/android-sdk-linux_86/tools/lib/x86/
#export TARGET_BUILD_TYPE=debug

bind -m emacs '"\en": history-search-forward'
bind -m emacs '"\ep": history-search-backward'
bind -m emacs '"\ew": backward-kill-word'

bind -m emacs '"\C-o": menu-complete'

bind -m emacs '"\C-ga": "grep \"\" * --color -rHniI|grep -v ^tags|grep -v ^cscopef"'
#bind -m emacs '"\C-gc": "grep \"\" * --color -rHnIf"'
bind -m emacs '"\C-gc": "cd $(!!)"'
bind -m emacs '"\C-gf": "$(fp)"'
bind -m emacs '"\C-gh": "--help"'
bind -m emacs '"\C-gm": "grep mei Makefile"'
bind -m emacs '"\C-gz": " arch/arm/boot/zImage"'

bind -m emacs '"\C-g\C-a": "mgrep.sh "'
bind -m emacs '"\C-g\C-b": "grep \"\" * --color -rHnIC2f"'
bind -m emacs '"\C-g\C-f": "bcompare \"$(fp)\" . &"'
bind -m emacs '"\C-g\C-n": "find -name "'
#bind -m emacs '"\C-]": character-search-backward'
#bind -m emacs '"\e\C-]": character-search'

unalias ls
#alias adb_="sudo adb kill-server && sudo adb start-server"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias brm='/bin/rm -rf'
alias CD='cd'
alias c.='cd ../..'
alias cd.='cd ../..'
alias c..='cd ../../..'
alias cd..='cd ../../..'
alias cdance_rsync="rsync -avurP /home/karlzheng/rjb/BSP/BSP_PRIVATE/ /media/sdb9/work/BSP_PRIVATE/"
alias cdg='cd /media/work/kernel/meizu/git/mx/linux-2.6.35-mx-rtm'
alias ck="cd /media/cdriver/work/kernel/meizu/"
alias co="cd -"
alias copy_to_m8="rsync -av /media/x/english/voa/ /media/Meizu\ M8/Music/voa/"
alias cp='cp -i '
alias cw="cd /media/work/"
alias cz="cd ~/mytools/m032/tz_release_key/"
alias git_vim_diff="git diff --no-ext-diff -w |vim -R -"
alias grep='grep --exclude-dir=.svn --exclude="*.o" --exclude="*.o.cmd" '
alias h='history|tail -n 35'
alias hi='history'
alias ht='history |tail -n 10 '
alias j='jobs '
alias killgtags="ps |grep global|awk '{print \$1}'|xargs kill -9;ps |grep gtags|awk '{print \$1}'|xargs kill -9"
alias LA='ls -latr'
alias la='ls -latr'
alias ll='ls -l '
alias l='ls -CF '
alias lm='ls arch/arm/configs/m*'
alias lr='ls -latr'
alias LS='ls'
alias ls='ls --color=tty -a '
alias lS='ls -laSr '
alias lsr='ls -lasr '
alias lsr='ls -lasr '
alias lt='ls -lat '
alias ltr='ls -latr '
alias m='mount '
alias mcd='cd '
alias mj="make -j$(/bin/grep processor /proc/cpuinfo \
    | /usr/bin/awk '{field=$NF};END{print(field+1)*2}') "
#alias mt3='mount -t ext3 '
#alias mtnfs=' mount -t nfs '
#alias mto='mount -o loop '
alias mv='mv -i '
alias mz='make zImage -j32 '
alias MZ='mz'
alias po='popd'
alias pp="cat -n /dev/shm/${MYUSERNAME}/daily_path"
alias pu1='pushd +1'
alias pu='pushd .'
alias sb='source ~/karlzheng_config/mybashrc.sh'
alias slog='svn log |tac '
alias smbmount242_home='sudo smbmount //172.16.10.242/home/ /media/242/ -o iocharset=utf8,username=${MYUSERNAME},dir_mode=0777,file_mode=0777'
alias smbmount242='mount |grep -q 242; if [ $? = 0 ];then sudo umount /media/x;fi;sudo smbmount //172.16.10.242/home/svn /media/x/ -o iocharset=utf8,dir_mode=0777,file_mode=0777,username=${MYUSERNAME}'
alias svnaw="svn diff --diff-cmd=diff | grep ^Index | awk '{printf \$2 \" \"}END{print \" \"}'"
alias svnaw_touch="svn diff --diff-cmd=diff | grep ^Index | awk '{printf \$2 \" \"}END{print \" \"}' |xargs touch"
alias vb='vi ~/karlzheng_config/mybashrc.sh ~/.bashrc'
alias vp='vi ~/karlzheng_config/mypathfunctions.sh ~/karlzheng_config/pwd.mk'
alias VI='vi'
alias um="umount "
alias wg="wget"

#alias mydate="echo $(date +%Y%m%d_%T)"
#alias svnawtar="date_str=$(date +%Y%m%d_%T) && tmp_file_name=svn_diff_$date_str && svnaw |xargs \
#tar --force-local -rvf \$tmp_file_name.tar && echo \$tmp_file_name && unset \
#tac ~/.bash_history |awk '!a[$0]++' |tac > /tmp/.bash_history &&  mv /tmp/.bash_history ~/.bash_history -f
function a()
{
    ack-grep -H --nogroup "$@"
}

function aa()
{
    ack-grep -H -a --nogroup "$@"
}

function androidsetrootpath()
{
    export ANDROID_SRC_ROOT="$(pwd)"
}

function atar()
{
	#http://www.ibm.com/developerworks/cn/aix/library/au-spunixpower.html?ca=drs-#history
	  if [ -f $1 ] ; then
		case $1 in
		  *.tar.bz2)   tar xjf $1     ;;
		  *.tar.gz)    tar xzf $1     ;;
		  *.bz2)       bunzip2 $1     ;;
		  *.rar)       rar x $1       ;;
		  *.gz)        gunzip $1      ;;
		  *.tar)       tar xf $1      ;;
		  *.tbz2)      tar xjf $1     ;;
		  *.tgz)       tar xzf $1     ;;
		  *.zip)       unzip $1       ;;
		  *.Z)         uncompress $1  ;;
		  *.7z)        7z x $1        ;;
		  *)           echo "'$1' cannot be extracted via extract()" ;;
		esac
	  else
		echo "'$1' is not a valid file"
	  fi
}

function append_daily_path()
{
	local path_list=(
		#'/media/work/4212/meizu/linux-3.0.15-beta'
		#'/home/karlzheng/to_del1/uboot-mxse'
		'/media/cdriver/work/kernel/meizu/meizu_m040/linux-3.0.39-rtm-mp-dev'
		'/media/cdriver/work/kernel/meizu/m032/linux-3.0.15-rtm-dev'
	);
	[ -f /dev/shm/${MYUSERNAME}/daily_path ] || touch /dev/shm/${MYUSERNAME}/daily_path
	for p in ${path_list[@]}; do
		grep -q "^$p$"  /dev/shm/${MYUSERNAME}/daily_path
		if [ $? != 0 ]; then
			echo "$p" >> /dev/shm/${MYUSERNAME}/daily_path;
		fi
	done
	wc -l /dev/shm/${MYUSERNAME}/daily_path |awk '{print $1}' > /dev/shm/${MYUSERNAME}/total_count
}

function cleantrash()
{
	/bin/rm -rf ~/.trash;
	mkdir ~/.trash;
	sync;
}

function del_carried_return()
{
	find -name "*.h" -o -name "*.c" |xargs sed -i -e "s#\r\n#\n#gc"
}

function emulator_env()
{
    export PATH=$(pwd)/out/host/linux-x86/bin:$PATH
    export ANDROID_PRODUCT_OUT=$(pwd)/out/target/product/generic
    export ANDROID_SWT=$(pwd)/out/host/linux-x86/framework
}

function lstrash()
{
	ls -l ~/.trash/ ;
}

function rm ()
{
   if [ ! -d ~/.trash ]; then
      mkdir ~/.trash;
   fi;
   #mv -i $* ~/.trash
   /bin/mv $* ~/.trash
}

function undel()
{
	mv ~/.trash/$* . ;
}

function d()
{
	cd ~/桌面/
}

function dfd()
{
    IFS=$'\n'
    for i in $(lsd);do
	du -sh "$i";
    done
}

function dl()
{
	cd ~/下载/
}

function diff()
{
    /usr/bin/diff -x '.svn' "$@"
}

function f()
{
    find -iname "$@"
}

function fp()
{
    if [ -f /dev/shm/${MYUSERNAME}/filename ];
        then cat /dev/shm/${MYUSERNAME}/filename
    fi
}


function fa()
{
    pwd > /dev/shm/${MYUSERNAME}/filename
}

function g()
{
    grep "$@"
}

#function gitdir()
function gd()
{
	echo config: .git/config
	cat .git/config
}

function gba()
{
	git branch -a
}

function gt()
{
    if [ -f /tmp/file.tar ];then
	tar tf /tmp/file.tar
	read -p "Decompressed ?" choose
	tar xf /tmp/file.tar
    else
	echo "no /tmp/file.tar"
    fi
}

function gitcobranch()
{
	if [ $# -eq 1 ];then
		git checkout -b "$1" origin/"$1"
	fi
}

function git_diff()
{
    git diff --no-ext-diff -w "$@" | vim -R -
}

function gitignore.kernel()
{
    if [ -f .gitignore ];then
	echo "exist .gitignore! exit!"
    else
	if [ -f ${HOME}/local_git/tips/git/kernel.gitignore ];then
	    echo cp ${HOME}/local_git/tips/git/kernel.gitignore ./.gitignore
	    cp ${HOME}/local_git/tips/git/kernel.gitignore ./.gitignore
	fi
    fi
}

function gitloghead()
{
	local tmpfile="gitloghead.log"
	if [ $# -ge 1 ];then
		if [ -f $tmpfile ];then
			mv $tmpfile $tmpfile.old -f
		fi
		startaddress=$(echo ${1##git.log:})
		startaddress=$(echo ${startaddress%%:})
		local startaddress=$(($startaddress-200))
		if [ $startaddress -lt 0 ];then
			startaddress=0
		fi;
		if [ $# -ge 2 ];then
			local stopaddress=$2
		else
			local stopaddress=$(($startaddress+400))
		fi
		echo "$startaddress,${stopaddress}p"
		sed -n "$startaddress,${stopaddress}p" git.log > $tmpfile
		vi $tmpfile
	fi
}

function gitsvnco()
{
	if [ $# == 0 ]; then
		echo "Must deposit which svn dir you want to check out!!"
		exit 1;
	fi
	git svn init "$1" --no-metadata
	git svn fetch
}

function gitsvncl()
{
	if [ $# == 0 ]; then
		echo "Must deposit which svn dir you want to check out!!"
		exit 1;
	fi
	git svn clone "$1"
}

function gitsvnup()
{
	echo "git svn fetch"
	git svn fetch
	while [ $? != 0 ]; do
		echo "git svn fetch result:$?"
		sleep 0.5
		git svn fetch
	done
	echo "git svn fetch okay. result:$?"
	git rebase --onto git-svn --root
}

function gitdiffmodified()
{
    pid=$$
    git diff -U1000000 > /tmp/tmp.${pid}.patch
    patch2dir.sh /tmp/tmp.${pid}.patch
    bcompare . /tmp/a &
}

function gittar()
{
	# http://blog.csdn.net/free2o/archive/2009/03/11/3981786.aspx
    local name=$(pwd)
    name=${name##*/}

    if [ ! "$1" ]; then
        echo "[ERROR] what branch to export?"
        return 1
    fi

    local date=$(TZ=UTC date '+%Y%m%d.%H%M')
    local pkg="$name-$date"
    local dir=".."
    local tar="$dir/$pkg.tar.gz"

    git archive \
        --format=tar \
        --prefix="$pkg/" \
        "$@" |
    gzip --best > "$tar"

    echo $tar
}

function gbr()
{
    git br "$@"
}

function gl()
{
    git log "$@"
}

function glg()
{
    git log "$@" > git.log
}

function gsu()
{
    git status -u "$@"
}

function ha()
{
    local ignore_cmd_list=(c h history ha hd he ls la)
    n=0
    history 10 |sort -r > /dev/shm/${MYUSERNAME}/hist10.txt
    while read line;
    do
        local cmd_line=$(echo "$line" |sed -e "s/[0-9]*  \(.*\)/\1/")
        local is_ignore_cmd=0
        for cmd in ${ignore_cmd_list[@]};
        do
            if [ x"$cmd_line" == x"$cmd" ]; then
                is_ignore_cmd=1
            fi
        done
        if [ $is_ignore_cmd == 0 ];then
            echo "$cmd_line" > /dev/shm/${MYUSERNAME}/hist_cmd.txt
            echo "$cmd_line"
            return 0
        fi
    done  < /dev/shm/${MYUSERNAME}/hist10.txt
}

function hd()
{
    cat  /dev/shm/${MYUSERNAME}/hist_cmd.txt
}

function he()
{
    local cmd_line=$(tail -1 /dev/shm/${MYUSERNAME}/hist_cmd.txt|tr -d "\r"|tr -d "\n")
    echo "$cmd_line"
    history -s "$cmd_line"
    #exec "$cmd_line"
    eval "$cmd_line"
}

function k()
{
     for i in $(jobs | awk '{print $1}' | sed -e 's#\[\(.*\)\].*#\1#'); do
	echo "kill -9 %$i"
	#sudo kill -9 %$i
	kill -9 %$i
     done
}

function ksvn()
{
	if [ $# -lt 1 ];then
		if [ -d .svn ];then
			#local svnurl=$(svn info | grep URL | awk '{print $2}')
			local svnurl=$(svn info | grep URL)
			svnurl=$(echo ${svnurl##URL: })
			kdesvn "$svnurl" &
		fi
	else
		kdesvn "$@" &
	fi
}

function lac()
{
     if [ $# -eq 0 ];then
		 echo "arch/arm/configs"
		 ls arch/arm/configs
     else
       ls $1
     fi
     return 0
}

function lsd()
{
    #/bin/ls -la | grep -E "^d|^l" | awk '{print $NF}'
    #ls -l | awk '/^d/{print $NF}'
    IFS=":"
    ls -d */
}

function md()
{
    mkdir -p "$@"
}

function mkdircd ()
{
  mkdir -p "$@" && eval cd "\"\$$#\"";
}

function mc()
{
    local cpu_nr=$(/bin/grep processor /proc/cpuinfo \
	| /usr/bin/awk '{field=$NF};END{print(field+1)*2}')

    if [ $# -eq 0 ];then
	make menuconfig -j$cpu_nr
    else
	make $1 -j$cpu_nr
    fi
    return 0
}

function mypath()
{
	local i=0
	while read line
	do
		echo $line
		eval "p$i=$line"
		#echo "${m[$i]}"
		((i++))
	done < /dev/shm/${MYUSERNAME}/daily_path
}

function myvimpath()
{
    export PATH=~/software/bin/bin:${PATH}:
}

function n()
{
	if [ $# -eq 0 ];then
		nautilus .
	else
		nautilus $1
	fi
	return 0
}

function p()
{
	if [ ! -f /dev/shm/${MYUSERNAME}/cur_pos ];
	then echo "1" > /dev/shm/${MYUSERNAME}/cur_pos;
		local  cur_pos=1;
	else local cur_pos=$(cat /dev/shm/${MYUSERNAME}/cur_pos);
		local total_count=$(cat /dev/shm/${MYUSERNAME}/total_count);
		((cur_pos ++));
		if [ $cur_pos -gt $total_count ];
		then cur_pos=$(expr $cur_pos - $total_count);
		fi
		echo $cur_pos > /dev/shm/${MYUSERNAME}/cur_pos;
	fi
	local enter_dir=$(sed -n "$cur_pos{p;q;}"  /dev/shm/${MYUSERNAME}/daily_path)
	builtin cd "$enter_dir"
	ap
}

function dnw()
{
    if [ $? != 0 ];then
	echo "last command is okay! exit!!"
	return 1
    fi
    if [ $# -ge 1 ];then
	local START_TIME=`date +%s`
	local filename="$(echo ${1/11111/})"
	#sudo dnw $1
	/usr/bin/dnw "$filename"
	local END_TIME=`date +%s`
	local ELAPSED_TIME
	let "ELAPSED_TIME=$END_TIME-$START_TIME"
	echo
	echo "Total used time is $ELAPSED_TIME seconds"
	echo
    fi
    return 0
}

function sdu () {
	#http://lilydjwg.is-programmer.com/posts/18368.html
	du -sk $@ | sort -n | awk '
	BEGIN {
		split("K,M,G,T", Units, ",");
		FS="\t";
		OFS="\t";
	}
	{
		u = 1;
		while ($1 >= 1024) {
			$1 = $1 / 1024;
			u += 1
		}
		$1 = sprintf("%.1f%s", $1, Units[u]);
		sub(/\.0/, "", $1);
		print $0;
	}'
}

function swap()
{
  mv $1 tmp.$$
  mv $2 $1
  mv tmp.$$ $2
}

function t()
{
    touch "$@"
}

sfile ()
{
    if [ $# -eq 0 ];then
	local file_list=(
	.vimrc
	#.ackrc
	karlzheng_config/mybashrc.sh
	karlzheng_config/mypathfunctions.sh
	#mytools
	)
	local DEV_SERVER_MOUNT_DIR=${HOME}/dev
	for f in ${file_list[@]}; do
	    rsync -avurP "${HOME}/${f}" "$DEV_SERVER_MOUNT_DIR/${f}" || return 1
	    rsync -avurP "$DEV_SERVER_MOUNT_DIR/${f}" "${HOME}/${f}" || return 1
	done
	return 0
    else
	local from="$1"
	local to="$2"
	rsync -avurP "$from" "$to" || return 1
	rsync -avurP "$to"   "$from" || return 1
    fi
}
function tfind()
{
	find . -exec grep -Hn "$@" {} +
}
function unap()
{
	if [ -d /dev/shm/${MYUSERNAME} -a \
		-f /dev/shm/${MYUSERNAME}/apwdpath ];then
		rm /dev/shm/${MYUSERNAME}/apwdpath
	fi
}

function v()
{
    if [ $# -eq 1 ];then
	if [ -f "$1" -o -d "$1" ];then
	    vi "$1"
	    return
	fi
    fi
    local fn=$(echo "$@" | awk -F: '{print $1}')
    local ln=$(echo "$@" | awk -F: '{print $2}')
    if [ -f "$fn" -o -d "$fn" ];then
	vim -c ":e $fn" -c ":$ln"
	return;
    fi
    if [ $(echo "$fn" | grep "^a/") ];then
	fn=$(echo "$fn" | cut -b 3-)
    fi
    if [ $(echo "$fn" | grep "^b/") ];then
	fn=$(echo "$fn" | cut -b 3-)
    fi
    if [ -f "$fn" -o -d "$fn" ];then
	vim -c ":e $fn" -c ":$ln"
	return;
    else
	vim -c ":LUTags $fn"
    fi
}

function v1()
{
   local n=0
   while [ $n -lt 200 ];do
       if [ ! -f "/tmp/del${n}.txt" ];then
	   break
       fi
       ((n++))
   done
   vi "/tmp/del${n}.txt"
}

function vl1()
{
    mkdir -p ~/tmp/log/
   local n=0
   while [ $n -lt 200 ];do
       if [ ! -f "${HOME}/tmp/log/${n}.txt" ];then
	   break
       fi
       ((n++))
   done
   vi ${HOME}/tmp/log/${n}.txt
}

function vc()
{
   if [ -d arch/arm/configs/ ];then
       vi arch/arm/configs/
   fi
}

function vm()
{
    #http://ahei.info/bash.htm
    #vim <(man "$@")
    local help_file="/tmp/$$.hlp.txt"
    (man "$@") > ${help_file}
    vim ${help_file}
    /bin/rm ${help_file}
}

function vmdis()
{
	local tmpfile="/tmp/vmdis.c"

	if [ -f $tmpfile ];then
		mv $tmpfile $tmpfile.old -f
	fi
	if [ $# -ge 1 ];then
		local startaddress="0x"${1##0x}
		if [ $# -eq 2 ];then
			local stopaddress=$2
		else
			local stopaddress=$(printf "0x%x" $(($startaddress+0x500)))
		fi
		echo "arm-none-linux-gnueabi-objdump -S vmlinux --start-address=$startaddress --stop-address=$stopaddress > $tmpfile"
		echo "the destinated disassemble file is:$tmpfile"
		history -s "vmdis $@"
		history -s "$tmpfile"
		arm-none-linux-gnueabi-objdump -S vmlinux --start-address=$startaddress --stop-address=$stopaddress > $tmpfile
		#vi $tmpfile
	fi
}

#alias mcd='pu; ${MYUSERNAME}path=$(tail -n 1 /dev/shm/${MYUSERNAME}path); cd $${MYUSERNAME}path'
function _mcd_complete() {
     COMPREPLY=()
     local cur=${COMP_WORDS[COMP_CWORD]};
     local com=${COMP_WORDS[COMP_CWORD-1]};
     case $com in
     'mcd')
         local my_complete_word=($(cat /dev/shm/${MYUSERNAME}/daily_path))
         COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
         ;;
     'c')
         local my_complete_word=($(cat /dev/shm/${MYUSERNAME}/daily_path))
         COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
         ;;
     *)
         ;;
     esac
     return 0
}

function _dnw_complete()
{
    local cur=${COMP_WORDS[COMP_CWORD]};
    local com=${COMP_WORDS[COMP_CWORD-1]};
    local j k
    if [[ $COMP_CWORD==1 && -z "$cur" ]];then
	local my_complete_word=(
	"11111arch/arm/boot/zImage"
	"11111/media/x/compiled/v4.0-dev/arch/arm/boot/zImage"
	)
	COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
	local dir_list=$(compgen -d)
	k="${#COMPREPLY[@]}"
	for j in $dir_list;do
	    COMPREPLY[k++]=$j
	done
    else   #dir complete
	local k
	COMPREPLY=()
	local dir_list=$(compgen -d -- $cur)
	k="${#COMPREPLY[@]}"
	for j in $dir_list;do
	    COMPREPLY[k++]=$j
	done
	local dir_list=$(compgen -f -- $cur)
	k="${#COMPREPLY[@]}"
	for j in $dir_list;
	do
	    COMPREPLY[k++]=$j
	done
    fi
    return 0
}

function _fastboot_completion()
{
	local cur
	COMPREPLY=()
	cur=${COMP_WORDS[COMP_CWORD]}
	prev=${COMP_WORDS[COMP_CWORD-1]}
	if [ $COMP_CWORD -eq 1 ];then
		COMPREPLY=($( compgen -W 'flash' -- $cur ))
	else
		if [ $COMP_CWORD -eq 2 ];then
			COMPREPLY=($( compgen -W 'kernel bootloader ramdisk system userdata' -- $cur ))
		else
			if [ $COMP_CWORD -eq 3 ];then
				case "$prev" in
					"system")
						COMPREPLY=($( compgen -W 'system.img' -- $cur ))
						;;
					"userdata")
						COMPREPLY=($( compgen -W 'userdata.img' -- $cur ))
						;;
					"ramdisk")
						COMPREPLY=($( compgen -W 'ramdisk-uboot.img' -- $cur ))
						;;
					"bootloader")
						COMPREPLY=($( compgen -W 'uboot_fuse.bin' -- $cur ))
						;;
					"kernel")
						COMPREPLY=($( compgen -W 'arch/arm/boot/zImage zImage' -- $cur ))
						;;
					*)
						COMPREPLY=($( compgen -W 'zImage' -- $cur ))
						;;
				esac
			fi
		fi
	fi

  return 0
}

function _mj_complete()
{
     COMPREPLY=()
     local cur=${COMP_WORDS[COMP_CWORD]};
     local com=${COMP_WORDS[COMP_CWORD-1]};
     case $com in
     'mj')
	 local my_complete_word=('zImage' "clean" "distclean" "xconfig")
	 COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
	 ;;
     *)
	 ;;
     esac
     return 0
}

function _mc_complete()
{
    COMPREPLY=()
    local com=${COMP_WORDS[COMP_CWORD-1]};
    local cur=${COMP_WORDS[COMP_CWORD]};
    local j k
    if [[ $COMP_CWORD==1 && -z "$cur" ]];then
	case $com in
	    'mc')
		if [ -d arch/arm/configs ];then
		    local my_complete_word=$(ls arch/arm/configs/m* -l |awk '{print $8}'|sed "s#.*/##")
		    COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
		fi
		;;
	    *)
		;;
	esac
    else
	if [ -d arch/arm/configs ];then
	    local my_complete_word=$(ls arch/arm/configs/${cur}* -l |awk '{print $8}'|sed "s#.*/##")
	    COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
	fi
    fi
    return 0
}

function _ksvn_complete() {
	local my_complete_word=(
		'svn://172.16.9.63/svn_src'
		'https://172.16.1.21/svn/IceCreamSandwich'
	)
	COMPREPLY=($(compgen -W '${my_complete_word[@]}' -- $cur))
	return 0
}
#complete -W 'svn://172.16.11.122/svn_src' 'https://172.16.1.21/svn/IceCreamSandwich' ksvn

complete -F  _fastboot_completion fastboot
complete -F  _mcd_complete mcd
complete -F  _mj_complete mj
complete -F  _mc_complete mc
complete -F  _ksvn_complete ksvn
complete -F  _dnw_complete dnw
complete -W 'arch/arm/configs' lac
complete -W 'xconfig' make
if [ $MYUSERNAME == $MYNICKNAME ];then
	complete -o default -F _longopt vi
fi

function my_bash_login_auto_exec_func()
{
	local path_list=(
		~/person_tools/
		~/mytools/
		~/software/bin
		/usr/local/arm/arm-2013q1/bin/
		/usr/local/arm/arm-2010q1/bin/
		~/software/android-sdk-linux_86/platform-tools
		~/software/android-sdk-linux_86/tools
		~/software/android-ndk-r8c
		~/bk/sw/adt/sdk/platform-tools
		~/bk/sw/gradle-1.6/bin
		~/bk/sw/adt/sdk/tools
		/usr/local/arm/linaro-arm-linux-gnueabi-4.6.3/bin
		#~/software/arm-eabi-4.6/bin
		${JAVA_HOME}/bin
	);
	local mypath=""
	for p in ${path_list[@]};
	do
		mypath=$mypath"$p:"
	done
	export PATH="$mypath"$PATH
	[ -d ~/.trash ] || mkdir ~/.trash
	[ -d ~/tmp/tmp_work_file ] || mkdir ~/tmp/tmp_work_file
	[ -d /dev/shm/${MYUSERNAME}/ ] || mkdir -p /dev/shm/${MYUSERNAME}/
	append_daily_path
	unset append_daily_path

	echo $SHELL |grep -q 'bash'
	if [ $? == 0 ];then
		grep -q "mybashrc\.sh" ~/.bashrc
		if [ $? != 0 ];then
			echo "" >> ~/.bashrc
			echo "if [ -f ~/mybashrc.sh ];then" >> ~/.bashrc
			echo '	source ~/mybashrc.sh' >> ~/.bashrc
			echo "fi" >> ~/.bashrc
			echo "" >> ~/.bashrc
		fi
	fi
	if [ "$(pwd)" == "${HOME}" ];then
		ac
	fi
	if [ -d "/rambuild" ];then
	    if [ ! -d "/rambuild/ramdisk" ];then
		mkdir "/rambuild/ramdisk"
	    fi
	    if [ ! -d "${HOME}/ramdisk" ];then
		ln -s "/rambuild/ramdisk" "${HOME}/ramdisk"
	    fi
	fi

	if [ $MYUSERNAME != $MYNICKNAME ];then
		export PATH=$PATH:/home/$MYUSERNAME/software/arm-2010q1/bin:
		export USE_CACHE=1
		if [ -d $HOME/ramdisk/ccache ];then
			mkdir -p $HOME/ramdisk/ccache
			CCACHE_DIR=$HOME/ramdisk/ccache
		fi
		mkdir -p ${HOME}/ccache
		CCACHE_DIR=${HOME}/ccache
		ccache -M 50G
	fi

	mkdir -p ~/tmp
	mkdir -p /tmp/t

	#export JAVA_HOME=/usr/lib/jvm/java-1.5.0-sun
	#export JAVA_HOME=/usr/lib/jvm/java-6-openjdk/
	#export JAVA_HOME=/usr/lib/jvm/java-6-sun/
	#export ANDROID_JAVA_HOME=$JAVA_HOME
}

#bash command:
#for i in $(grep "CONFIG_EVT1" * --color -rHnI|grep -v ^tags|grep -v ^cscope | awk -F: '{print $1}');do  sed -ie "s#CONFIG_EVT1#CONFIG_EXYNOS4412_EVT1#g" $i;done
#1727  git checkout --track origin/mars
#rsync -avurP /home/karlzheng/rjb/BSP/BSP_PRIVATE/ /media/sdb9/work/BSP_PRIVATE/

if [ -f ~/karlzheng_config/adb.bash_complete.sh ];then
	source  ~/karlzheng_config/adb.bash_complete.sh
fi

if [ -f ~/karlzheng_config/mypathfunctions.sh ];then
	source ~/karlzheng_config/mypathfunctions.sh
fi
if [ -f ~/karlzheng_config/my_private_bashrc.sh ];then
	source ~/karlzheng_config/my_private_bashrc.sh
fi

my_bash_login_auto_exec_func
