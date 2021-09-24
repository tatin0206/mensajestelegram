import requests

def telegram_bot_sendtext(bot_message):

    bot_token = "2001185335:AAEBamvMtgrMC4vKwdk29Qr2HTXLwhZDB6g"
    bot_chatID = "836699156"
    send_text = 'https://api.telegram.org/bot' + bot_token + '/sendMessage?chat_id=' +bot_chatID + '&parse_mode=Markdown&text=' + bot_message
    response = requests.get(send_text)
    return response.json()

    
    
archivo = open("diagnostico.txt","r")
contenido = archivo.read()
test = telegram_bot_sendtext(contenido)
archivo.close()
print(test)

