.class public Lcom/perm/utils/AudioAdCounter;
.super Ljava/lang/Object;
.source "AudioAdCounter.java"


# static fields
.field private static listens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    return-void
.end method

.method public static adPlayed()V
    .locals 6

    .prologue
    .line 24
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 25
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    .line 27
    :cond_0
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v0

    .line 31
    .local v0, "limit":I
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 32
    .local v1, "size":I
    if-le v1, v0, :cond_1

    .line 33
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 35
    :cond_1
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/perm/utils/AudioAdCounter;->saveToDisk(Ljava/util/ArrayList;)V

    .line 36
    return-void
.end method

.method static getLimit()I
    .locals 3

    .prologue
    .line 61
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "aa_l"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static readFromDisk()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "aalog.bin"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    .local v3, "os":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-object v2

    .line 91
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/DataInputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static saveToDisk(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "listens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v5, "aalog.bin"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v1, "os":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 72
    .local v0, "i":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "i":Ljava/lang/Long;
    .end local v1    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    .end local v2    # "th":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 73
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setLimit(I)V
    .locals 2
    .param p0, "new_limit"    # I

    .prologue
    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aa_l"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static shouldPlayAd()Z
    .locals 8

    .prologue
    .line 42
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 43
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 47
    .local v0, "day_listens":I
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 48
    .local v1, "listen":Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "listen":Ljava/lang/Long;
    :cond_2
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
