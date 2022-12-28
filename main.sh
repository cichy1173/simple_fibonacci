#!/bin/busybox ash

# iteracyjnie
fib() {
  a=0
  b=1
  for i in `seq 0 $(( $1 - 1 ))`; do
    c=$(( a + b ))
    a=$b
    b=$c
  done
  echo $a
}

echo "Podaj numer elementu ciągu Fibonacci: "
read n

result=$(fib $n)

echo "Nazwa programu: simple_fibonacci"
echo " Imię i nazwisko autora: Grzegorz Cichocki"
echo " Numer grupy dziekańskiej: GL01"
echo " Wynik: $result"