# Türkçe yerelinde sorun var, geçici çözüm uygula
set -gx LANG en_US.UTF-8

if test -f $X/etc/fish/config.fish
	. $X/etc/fish/config.fish
end
