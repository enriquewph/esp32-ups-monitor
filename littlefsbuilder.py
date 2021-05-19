Import("env")
env.Replace( MKSPIFFSTOOL=env.get("PROJECT_DIR") + '/mklittlefs' )
#Se puede conseguir la ultima version en https://github.com/earlephilhower/mklittlefs/releases