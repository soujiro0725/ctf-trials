# coding: utf-8

import string


english_freq = [
  ("e", 0.1249), ("t", 0.0928), ("a", 0.0804), ("o", 0.0764), ("i", 0.0757),
  ("n", 0.0723), ("s", 0.0651), ("r", 0.0628), ("h", 0.0505), ("l", 0.0407),
  ("d", 0.0382), ("c", 0.0334), ("u", 0.0273), ("m", 0.0251), ("f", 0.0240),
  ("p", 0.0214), ("g", 0.0187), ("w", 0.0168), ("y", 0.0166), ("b", 0.0148),
  ("v", 0.0105), ("k", 0.0054), ("x", 0.0023), ("j", 0.0016), ("q", 0.0012),
  ("z", 0.0009)]

sorted_freq = sorted(english_freq, key=lambda x: x[0])
english_freq = dict(english_freq)
alphabet = string.lowercase

n = 65537 # length of string
ic = 0.0

for x in alphabet:
	phi = english_freq[x] * n
	ic += phi * (phi - 1)
ic /= n * (n - 1)
print "一致指数は {}".format(ic)

def caeser_decrypt(ciphertext, key, alphabet):
    res = ""
    key = alphabet.index(key)
    for c in ciphertext:
        res += alphabet[(alphabet.index(c) - key) % len(alphabet)]
    return res

def count_alphabet(text, alphabet):
    return [text.count(x) for x in alphabet]


ciphertext = """
kzwksoskwujwldalldwudwsjafysfvskwujwldalldwzglesvwgxjmklauhgdwksfvkzwzsvfwnwjt
wwfzwjwtwxgjwkzwjwsdarwvalosklzwimawlhdsuwozwjwlzwyjgoafyhzwsksflkowjwjwsjwvlz
wcwwhwjafzakkzajlkdwwnwkoskcfwwdafyzseewjafylzwvgyljgllwvxgjosjvoalzskzgjlkzsj
htsjcsfvlzwcwwhwjdaxlwvzakxsuwkmvvwfdqsfvksozwjzwzsvsklsjldwvdggcafzakwqwkzwkl
jsayzlwfwvzaekwdxsfvksdmlwvosluzafyzwjafkadwfuwskkzwusewxgjosjvoalzowscwfafyda
etkzwjwkwflwvlzwafljmkagfzwuzwjakzwvzakkgdalmvwskzakgfdqsfvdsklxjwwvgeafdaxwao
gfvwjwvozsllzwzseewjafyoskkzwksavxwwdafyowscsfvtjwslzdwkksfvsdalldwsxjsavgxzae
skzwdggcwvkgkljsayzlslzwjszeywllaflzugghkjwsvqxgjlzqgmfytgvkzwksavaftjgsvnwjfs
umdsjkzwvavfglcfgoozsllgksqsfvkzwxwdlowscakzgmdvdacwlgkalvgofstalkzwksavugewsf
vkalwjwalzmlzwksavygafyafxjgflgxzwjlglzwzmlhmkzafyskavwkgewlaetwjsfvklmxxsfvvj
soafygmlsjmklauuzsajesvwgxzsrwdklauckseszldayzlqwjsdalldwxajwzwskcwvoalzlzwumj
agmkfsnwlgxlzwvasdwulgzvgfltglzwjkzwjwhdawvtmlzwdggcwvslzwjzsfvklzwqowjwjslzwj
tdmwkgzwimaucdqlggckgewdsjuzloayklglzwdalldwtjaucxajwhdsuwaflzwugjfwjsfvafsege
wfllzwqwddgoxdsewoskjmffafymhlzwuzaefwqzwesvwshdsuwtqlzwtjauczwsjlzkalwjwlzwfs
talsfvosjeqwjzwksavsowltjgofvgyusewjmffafysfvvavfgltsjcdaxlafysowlxwslzwjgxsls
adlzwesfxgddgowvafsowltdsucgadkcafbsucwldacwsuzsmxxwmjsfvxsuwxdmkzwvsdalldwkzw
xwdlzaejwugadafzakimaucosdcozwfzwksozwjkzwklggvmhaflzwzsfvtjwsvlzgxvjqfwkkmfvw
jlzwjmklauhgjuzzwksdmlwvoalzgmlkhwscafyugeafykdgodqfwsjkzwtwysflgoalzvjsoaebmk
lygafykzwksavoskqwjosalaflgywlafzwskcwvdggcafysllzwzmlfglslzwjfgagfdqkslsxwoea
fmlwkaflzwkzwdlwjkzwksavoalzimawlvayfalqzwdggcwvslzwjkzwdggcwvugdvkajudaxxgjvs
vflyglfgglzwjcwqlzwfzwskcwvfgtmlalvgwkflesllwjausfkalhwjxwuldqvjqmfvwjlzakhgju
zyggvsxlwjfggfkzwzslwvlzwwpuwkkgxnwjfsumdsjafzakkhwwuzzwosluzwvzwjudgkwdqskkzw
oskegnafysosqlzwfzwzaluzwvmhzakbsucwlsfvhmlzakzsfvafzaktjwwuzwkhgucwllscafygml
lzwcwqgxlzwzmlshhwfqwjvtwllwjsnwlzakcwqsfszeafxwfvxgjltgvkkgewglzwjjgsvkzwdggc
wvslzaeozslvgqgmewsfkzwskcwvaewsfskshhwfszusfxafvsfmlzwjhdwwuwskddvmxgjjwsjafl
zhzwsksflkaxqwjosfllwjtwwjwqgddfgfosflewewkkafstszlslzlaewkzwdggcwvslzaeywllaf
yzakewsfafylzjgmyzlzwxgygxlzwvasdwulozqvgflqgmkhwscgjvafsjqwfydakzkzwksavugdvd
qewszlzgolalogjgjvafsjqkzwoskkadwflxgjsxwoegewflkafsfywjkgaxqwjosfllcwqqwjvtwl
lwjlsualgjshhwfszvtwllwjyawlqwjlwjegjjwjsfudwsjsddlklmxxszlxmklogmdvlzslvmxgjq
wjkzwtwusewegjwsfyjqavavflosflqgmjcwqkzwksavavgflosflqgmlgudwsjsfqlzafygmlslsd
davgflaflzwdwsklosfllglmjfqgmgmlgxqgmjzmllzsfcqgmagfdqosflwvlgtwstdwlgkalzwjwk
gewlaewkdacwlgvsqtmlausfkalhwjxwuldqowddmfvwjlzwhgjuzkghdwskwksqfgegjwstgmlalz
wdggcwvslzwjsysafoalzzakoaucwvtdmwwqwkozqzwtwysfaflzwtjgsvkdgovasdwulqgmjdsvqk
zahkskowdugewskuzjaklesklwjlzzmlsflzcwqsfanwjqlzafcskakgfqlzaklaewglzqwsjlzwjk
tgvklwjkwlsfsznwygllwjtwhgllwjafstszlsyggvtalkwwafsxlwjwesfsoaflwjlaewszfwvsjv
dqugewfayzlzhdwwuwtmlozsloakhjafysfkajudaxxgjvosflaflwjklsjllzhzwsksflksfqgmjd
svqkzahvfgfosflewlafcwjafsjgmfvsfstgmlozwfkzwoskwjwsddlzwlaewkzwdaklwfwvoalzsv
aecafvgxsesrwewflozqkzgmdvaeafvqgmjtwafyzwjwkzwskcwvzwdggcwvslzwjumjagmkdqlfma
ksfuwgfewzwksavtjawxdqtmlkayfaxausfldqkzwxdmkzwvnwjqowddkzwksavxafsddqaogflljg
mtdwqgmtmlavgfllzafcakzgmdvzsnweafvwvslsddkallafysfvkwwafyqgmdggcsxlwjlzwtajvk
akzgmdvzsnwdacwvaltmlkafuwqgmlzafcalaflwjxwjwkoalzqgmaogflvaklmjtqgmvgfltwsxjs
avqgmsjwkajudaxxgjvkcwwhwjfgleafwlzwhzjskwkgmfvwvimwwjkzwvavflcfgoozqtmlkzwdwl
alhskkfsqqgmjdsvqkzahalkqgmjdsvqkzahkgofmlalkskqgmjdsvqkzahdacwksfhdwskwkwnwjq
laewqwjusflmjfewgxxslsoackfglauwalogjgfdqgfdqozslkzwskcwvtsxxdwvzwhmkzwvtsucza
kzslafsfgvvugeauosqgfqskshhwfqgvdacwlzwhdsuwlwjqwjkwfozwfqwjvavugewsffglewewkk
afstszltmlozqkzwksavsfyjqsjwflqgmsuanadarwvzmesftwafyvgqgmlzafcagmyzllgtwsxjsa
vgxqgmozqkzgmdvalscwsfqfglauwgxqgmsfvqgmjtwafyzwjwgjfglozqakalaehgjlsflzwdggcw
vslzwjsddzakxsuwydaeewjafyoalzoaucwvdsmyzlwjalkfglqgmjdsvqkzahfglaflzwnwjqdwsk
lzwksavowddozqlzwfkzwskcwvkzsddaywlqgmjdsvqkzahsfglzwjcwqlzwffglzsfcqgmavgflos
flalszddywlalsfqzgoowvtwklsnwlogcwqklwjlzhdsuwsfvaugfkavwjqgmsjwafkgdwflksavug
ffawoalzzwjugdgmjmhhsflafysdalldwfsqfsqzwksavimaucdqvmffsqwjksqlzslfsqfsqafanw
jewsflfmlzafcszgfqlzgmyzlskaxqgugewwjwszkvsnwlwjudwsjgmlsfalvewsfsdglgxogjckwl
lafmhkgewozwjwkwdkwtmlaxqgmjdsvqkzahakflygafylwjlscwfgfglauwgewlzwfalkkajudaxx
gjvkmlsfwnwjqlzafcakskqgmjdsvqkzahdacwkwnwjqlzafcakskqgmjdsvqkzahdacwksfhdwskw
ktsjjafqwjlscwfgfglauwgewvgaflztalkgxbgtksksznwygllwjvgugffawowflsosqugehdwlwd
qtwoadvwjwvkzwoskfglkmjwozwlzwjkzwzsvtwwfafkmdlwvsfvegjlsddqgxxwfvwvgjfglhwjzs
hklzwesfjwsddqgfdqewsflozslzwksavlzslzwlzgmyzlkzwogmdvwphwulzaelgcwwhsosqskaxk
zwogmdvvjwsegxalsfvskaxzwugmdvhgkkatdqtwkgaehgjlsflzwsfvzakklmhavhjwkwfuw
"""

ciphertext = "".join(ciphertext.split())

table = []

for t in xrange(len(alphabet)):
	tmp = [alphabet[(alphabet.index(x) - t) % 26] for x in ciphertext]
	table += [abs(0.0661 - sum(map(lambda x: (x[0]-1)*x[1][1]/(len(tmp) - 1),zip(count_alphabet(tmp, alphabet), sorted_freq))))]
	print table
key = alphabet[table.index(min(table))]

print "key is {}".format(key)
#print alphabet.index(key)
#print caeser_decrypt(ciphertext, key, alphabet)

