get_tag_django_migrations () {

    last_n=$1
    migrations_directory=$2
    tags=($(git tag --sort version:refname | egrep '^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$'))
    begin=`expr ${#tags[@]} - ${last_n}`
    subset_tags=(${tags[@]:${begin}})
    
    for (( i=0; i< `expr ${#subset_tags[@]} - 1` ; i+=1 )) ;   # forwards
    do    
        tag1="${subset_tags[i]}"
        tag2="${subset_tags[i+1]}"; 
        migrations=$(git diff  --name-only ${tag1} ${tag2} | grep ${migrations_directory} |awk -F "/" '{print $3}'| awk -F "_" '{print $1}')
        echo $tag1 ".." $tag2 ": " $migrations
    done

}
