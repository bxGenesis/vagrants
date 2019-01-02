      cat  << _EOF_
 ######### PHASE 0: Parameters Specification
_EOF_
      genesisUserName=vagrant
      genesisUserGroup=vagrant
      genesisUserPasswd=vagrant
      genesisGitRepoCloneCmnd="git clone xxx"
      genesisGitRepoEntryCmnd="./xx/yy"

      cat  << _EOF_
 ######### PAHSE 1: Create bxgenesis User -- Running As Root
_EOF_

      # sudo useradd i2user
      # echo $genesisUserPasswd | sudo -S passwd i2user --stdin
      # echo $genesisUserPasswd | sudo -S passwd root --stdin
      # sudo usermod -aG wheel i2user
      # sudo echo 'i2user ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

      cat  << _EOF_
 ######### PHASE 2: Bring Over genesisClone -- Running As $genesisUserName
_EOF_

      sudo apt install git

      sudo -u $genesisUserName /usr/bin/bash << _EOF_genessisUserName_

      cd ~$genesisUserName
      mkdir -p ~$genesisUserName/gitRepos
      cd ~$genesisUserName/gitRepos
      #$genesisGitRepoCloneCmnd

      #$genesisGitRepoEntryCmnd

_EOF_genessisUserName_

      cat  << _EOF_
 ######### PHASE 3: Cleanup and Shutdown  -- Running As Root
_EOF_
