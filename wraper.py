from robot.api.deco import keyword, library
import  sys 
sys.path.append("../RATP_PYTHONSTAG-main/src") 

from  calcul_tarif  import  calcul_tarif
__version__ ="1.0"
ROBOT_AUTO_KEYWORDS = False  #pour que toutes les méthodes soient pas considérés comme des mots clefs 

calcul = calcul_tarif()

@keyword('nouveau calcul')   #pour modifier le nom de wraper 
def wraper(age:int, tourist):
    return calcul.tarif (age, tourist)

@keyword()
def bidon ():
    print ("test bidon")