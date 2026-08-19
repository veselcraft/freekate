.class public abstract Lcom/perm/utils/AudioAdCounter;
.super Ljava/lang/Object;
.source "AudioAdCounter.java"


# static fields
.field private static listens:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static adPlayed()V
    .locals 4

    .line 24
    sget-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    .line 27
    :cond_0
    sget-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v0

    .line 31
    sget-object v1, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 33
    sget-object v2, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 35
    :cond_1
    sget-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perm/utils/AudioAdCounter;->saveToDisk(Ljava/util/ArrayList;)V

    return-void
.end method

.method static getLimit()I
    .locals 3

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
    .locals 5

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "aalog.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 89
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static saveToDisk(Ljava/util/ArrayList;)V
    .locals 5

    .line 70
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v3, "aalog.bin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static setLimit(I)V
    .locals 2

    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aa_l"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldPlayAd()Z
    .locals 8

    .line 42
    sget-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    .line 47
    :cond_0
    sget-object v0, Lcom/perm/utils/AudioAdCounter;->listens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->getLimit()I

    move-result v0

    if-ge v2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
