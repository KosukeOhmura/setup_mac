goenv install -l

flag=true;
while $flag; do
  echo "choose golang version to install: "
  read golang_ver
  for version in `goenv install -l`
  do
    if [ $golang_ver = $version ]; then
        flag=false;
        break;
    fi;
  done
done

goenv install $golang_ver
goenv global $golang_ver
goenv rehash

go version
