blue=$(tput setaf 4)
normal=$(tput sgr0)
# printf "%40s\n" "${blue}This text is blue${normal}"

exec_spim() {
  printf "%40s\n" "${blue}EXEC $1${normal}"
  ../../bin/spim $1 > $1.log
}

exec_spim tests/book_list.s
exec_spim tests/cells.s
exec_spim tests/complex.s
exec_spim tests/cool.s
exec_spim tests/graph.s < tests/g1.graph
exec_spim tests/hairyscary.s
exec_spim tests/hello_world.s
exec_spim tests/io.s
exec_spim tests/lam.s
exec_spim tests/list.s
exec_spim tests/new_complex.s
exec_spim tests/primes.s
