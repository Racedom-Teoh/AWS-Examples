
# Create a new Maven Project
```sh
mvn archetype:generate \ 
-DgroupId=com.mycompany.app \ 
-DartifactId=my-app \ 
-DarchetypeArtifactId=maven-archetype-quickstart \ 
-DarchetypeVersion=1.5 \ 
-DinteractiveMode=false
```

```sh
mvn -B archetype:generate \
-DarchetypeGroupId=software.amazon.awssdk \
-DarchetypeArtifactId=archetype-lambda \
-Dservice=s3 \
-Dregion=US_WEST_2 \
-DarchetypeVersion=2.31.75 \
-DgroupId=com.example.myapp \
-DartifactId=myapp
```