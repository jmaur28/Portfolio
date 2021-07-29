#! /bin/bash
#bonus

if [[ $4 == 'BlackJack' ]]; then
	 grep -ie $1:00:00 $3_Dealer_schedule | awk -F" " '{print $1, $2, $3, $4}' | grep -ie $2 

elif [[ $4 == 'TexasHoldEm' ]]; then
 	grep -ie $1:00:00 $3_Dealer_schedule | awk -F" " '{print $1, $2, $7, $8}' | grep -ie $2

elif [[ $4 == 'Roulette' ]]; then
	grep -ie $1:00:00 $3_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep -ie $2

else
	echo "error please enter BlackJack, TexasHoldEm, or Roulette"

fi