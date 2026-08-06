.class public Lcom/perm/utils/Slicer;
.super Ljava/lang/Object;
.source "Slicer.java"


# static fields
.field private static max:I

.field private static random:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    .line 57
    const v0, 0x186a0

    sput v0, Lcom/perm/utils/Slicer;->max:I

    return-void
.end method

.method private static generate()I
    .locals 3

    .prologue
    .line 60
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget v2, Lcom/perm/utils/Slicer;->max:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 61
    .local v0, "index":I
    return v0
.end method

.method public static get()I
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 41
    :goto_0
    return v0

    .line 24
    :cond_0
    invoke-static {}, Lcom/perm/utils/Slicer;->getFromFile()Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    .line 25
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 26
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/perm/utils/Slicer;->generate()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    .line 29
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/perm/utils/Slicer;->saveToFile(I)V

    .line 31
    invoke-static {}, Lcom/perm/utils/Slicer;->getFromFile()Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    .line 32
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Slicer problem"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 38
    sget v0, Lcom/perm/utils/Slicer;->max:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    .line 41
    :cond_2
    sget-object v0, Lcom/perm/utils/Slicer;->random:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static getFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".Kate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v0, "baseDir":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "slice.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 51
    .end local v0    # "baseDir":Ljava/io/File;
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "baseDir":Ljava/io/File;
    goto :goto_0
.end method

.method private static getFromFile()Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Lcom/perm/utils/Slicer;->getFile()Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 87
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 89
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "input":Ljava/io/BufferedReader;
    :goto_0
    return-object v4

    .line 82
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 87
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 84
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 85
    .local v3, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_2

    .line 84
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static isInSlice(I)Z
    .locals 2
    .param p0, "percents"    # I

    .prologue
    .line 93
    sget v1, Lcom/perm/utils/Slicer;->max:I

    div-int/lit8 v1, v1, 0x64

    mul-int v0, v1, p0

    .line 95
    .local v0, "limit":I
    invoke-static {}, Lcom/perm/utils/Slicer;->get()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static saveToFile(I)V
    .locals 4
    .param p0, "r"    # I

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-static {}, Lcom/perm/utils/Slicer;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 74
    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_2

    .line 69
    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_1
.end method
