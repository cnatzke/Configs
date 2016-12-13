
~/.fehbg


if [ -s ~/.Xmodmap ]; then
	xmodmap ~/.Xmodmap
fi

numlockx &

redshift -l 39.754185:-105.230484 &

exec i3
