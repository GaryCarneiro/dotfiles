
datefmt=`date "+%d%b%Y-%H%M%S"`
# Backup Directory
bdir="/tmp/zsh_backup_$datefmt"
echo "Backup Directory is $bdir"
mkdir -v $bdir


cp -v ~/.zshrc  $bdir
cp -v ./zshrc ~/.zshrc

cp -v ~/.zsh_custom_profile  $bdir
cp -v ./zsh_custom_profile ~/.zsh_custom_profile

cp -v ~/.aliases  $bdir
cp -v ./aliases ~/.aliases

cp -v ~/.functions  $bdir
cp -v ./functions ~/.functions

cp -aRv ./anapy $HOME/.oh-my-zsh/custom/plugins
cp -aRv  $HOME/.oh-my-zsh/custom/plugins/anapy $bdir
