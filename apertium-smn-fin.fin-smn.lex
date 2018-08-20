DELIMITERS = "<$\.>" "<$!>" "<$?>" "<.>" "<!>" "<?>" "<...>" "<¶>" ;

SETS

LIST CS = CS ; 

LIST Gen = Gen;
LIST Ela = Ela;

LIST @SUBJ→ = @SUBJ→;
LIST @←SUBJ = @←SUBJ;
LIST @OBJ→ = @OBJ→;
LIST @←OBJ = @←OBJ;

LIST CLB = CLB;
LIST COMMA = "<,>" ;

# Word categories

LIST AIKA = "vuosi" "aika" "kuukausi" "tunti" "viikko" ;

SECTION

# pitää → 1: berret, 2: liikot, 3: coakcut

SUBSTITUTE ("pitää") ("pitää:1") ("pitää" V) ((-1* @SUBJ→ + Gen BARRIER CLB) OR (1* @←SUBJ + Gen BARRIER CLB));
SUBSTITUTE ("pitää") ("pitää:2") ("pitää" V) ((1* Ela BARRIER CLB) OR (-1* Ela BARRIER CLB));

# käydä = fitnat. 1: fallehit
SUBSTITUTE ("käydä") ("käydä:1") ("käydä" V) (1* ("kimppuun") BARRIER CLB);
# REMOVE ("kimppuun") (-1* ("käydä:1") BARRIER CLB) ; (this to be done in .t?x

# vaihde = molsa. 1: jorggáldat
# SUBSTITUTE ("vaihde") ("vaihde:1") ("vaihde" N) (-1 AIKA);



#    <e><p><l>doallat<s n="V"/><s n="TV"/></l><r>pitää<s n="V"/></r></p><par n="V_V"/></e><!-- hold (acc) -->
#    <e srl="1"><p><l>berret<s n="V"/><s n="IV"/></l><r>pitää<s n="V"/></r></p><par n="V_V"/></e><!-- burde, ought to -->
#    <e srl="2"><p><l>liikot<s n="V"/><s n="IV"/></l><r>pitää<s n="V"/></r></p><par n="V_V"/></e><!-- like (ela to ill)  -->
#    <e srl="3"><p><l>coakcut<s n="V"/><s n="IV"/></l><r>pitää<s n="V"/></r></p><par n="V_V"/></e><!-- get grip, foothold -->

# siten = dakko bokte. 1: nu

SUBSTITUTE ("siten") ("siten:1") ("siten" Adv) (1 COMMA) (2 ("että")) ;

# Se alkoi maaliskuun alusta ja joulukuu oli siten kymmenes kuukausi.
#  Hän leikkasi kuvan siten, että vain hänen päänsä näkyi.
# joka erosi alkuperäisestä kappaleesta siten, että McCoy puhui kappaleen puheosuudet Razzlen sijaan.
# oikeudet voidaan rajoittaa siten, että siinä olevan virheen vaikutukset minimoituvat.
