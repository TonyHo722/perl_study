# perl_study

## use perl to replace string - [perl link](https://github.com/TonyHo722/perl_study/blob/master/change_string/run)
replace caravel_asic to $USER
```
$ echo "open_wave_database caravel_asic.wdb" | perl -pe "s/open_wave_database \w+/$USER/"
tonyho.wdb

```
```
  -p                assume loop like -n but print line also, like sed
  -e program        one line of program (several -e's allowed, omit programfile)
```
