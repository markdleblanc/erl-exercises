for file in ./src/*
do
    erlc -o ./bin/ "$file"
done
