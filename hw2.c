                if (!fgets(s, MAXSTR+3, stdin)){
                        pomp = 0;
                        exit(0);
                }//if

                int size = strlen(s);
                if (s[size-1] == '\n'){
                        s[size-1] = '\0';
                }//if
                if (strcmp(s,"exit")==0){
                        pomp = 0;
                        exit(0);
                }

                int n = strlen(s) -1;
                if (n>MAXSTR){
                        printf("error: input too long\n");
                        pomp = 0;
                        exit(0);
                }
                while (pomp == 1){
                        printf("%s\n", s);
                        break;
                }
        }//while

}//main
                                                             41,7          Bot

