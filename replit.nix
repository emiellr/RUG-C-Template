{ pkgs }: {
	deps = [
		pkgs.ccls
		pkgs.gdb
		pkgs.gnumake
		pkgs.gcc
		pkgs.valgrind
	];
}