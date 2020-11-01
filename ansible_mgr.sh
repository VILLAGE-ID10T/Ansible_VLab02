## interactive script
#!/bin/bash
LOC="pwd"
#cd $LOC
AN="/usr/local/bin/ansible"
AI="/usr/local/bin/ansible-inventory"
AT="/local/bin/ansible-config"
ST="~/.virtualenvs/vlab_02/stackers/"

echo "Hurry and Pick Something already!"

echo "  1)List All Playbooks"
echo "  2)List ALL Hosts"
echo "  3)List Inventory config For Each Device"
echo "  5)List Backups"
echo "  6)operation 6" 
echo "  7)operation 7"
echo "  8)operation 8"
echo "  9)operation 9"
echo "  10)operation 10"
# Ansible ADHOC Commands
echo "  11)ansible -m ping all"  

read n
case $n in 

  1) printf "\n# Stackers\n" && ls -R -1 stackers;;

#printf "\n# Playbooks Available\n" && pwd && printf "\n#  $ST"  && ls -1 stackers && printf  "\n# playbooks" && pwd && ls -R -1 playbooks && printf '.\n\n';;
  2) $AN --list-hosts -i hosts all;;
  3) $AI -i hosts --list -y ;;
  4) ./get_list.sh;;
  5) printf "\n# Backups\n" && ls -R -1 backup;;
  6) echo "You chose Option 4";;
  7) echo "You chose Option 4";;
  8) echo "You chose Option 4";;
  9) echo "You chose Option 4";;
  10) echo "You chose Option 4";;
  11) $AN -i hosts -m ping all;;
  12) echo "You chose Option 4";;
  13) echo "You chose Option 4";;
  *) echo "invalid option";; 

esac

read -p "Press enter to continue"

./ansible_mgr.sh
