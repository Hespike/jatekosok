#!/usr/bin/awk -f

# parameterkent kapott filebol osszeadja azon jatekosok pontszamat
# akiknek a neve...

BEGIN	{
    FS="#OS"
    osszeg=0
} 
# 1 nagybetuvel kezdodik
# utana legalabb 1db kis vagy nagybetu van
# a vegen pontosan 2 szam van
$1~/^[A-Z][A-Za-z]+[0-9]{2}$/{
    osszeg += $3
} 
END	{
    print osszeg
}
