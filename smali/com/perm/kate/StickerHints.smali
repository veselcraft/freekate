.class public Lcom/perm/kate/StickerHints;
.super Ljava/lang/Object;
.source "StickerHints.java"


# static fields
.field static hints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;>;"
        }
    .end annotation
.end field

.field static hints_pref_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    .line 113
    const-string v0, "sticker_hints"

    sput-object v0, Lcom/perm/kate/StickerHints;->hints_pref_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(J)Ljava/util/HashMap;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/perm/kate/StickerHints;->loadFromDisk(J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;J)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/perm/kate/StickerHints;->refresh(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/HashMap;J)V
    .locals 1
    .param p0, "x0"    # Ljava/util/HashMap;
    .param p1, "x1"    # J

    .prologue
    .line 15
    invoke-static {p0, p1, p2}, Lcom/perm/kate/StickerHints;->saveToDisk(Ljava/util/HashMap;J)V

    return-void
.end method

.method public static get(Ljava/lang/String;J)[I
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "account_id"    # J

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-object v1

    .line 23
    :cond_1
    sget-object v2, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 24
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0
.end method

.method private static getFileName(J)Ljava/lang/String;
    .locals 2
    .param p0, "account_id"    # J

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getShowStickerHints()Z
    .locals 3

    .prologue
    .line 120
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/StickerHints;->hints_pref_name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static initIfRequired(JLandroid/app/Activity;)V
    .locals 2
    .param p0, "account_id"    # J
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    sget-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/perm/kate/StickerHints$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/StickerHints$1;-><init>(JLandroid/app/Activity;)V

    .line 47
    invoke-virtual {v0}, Lcom/perm/kate/StickerHints$1;->start()V

    goto :goto_0
.end method

.method private static loadFromDisk(J)Ljava/util/HashMap;
    .locals 6
    .param p0, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "is":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/perm/kate/StickerHints;->getFileName(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .local v1, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 106
    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 98
    :catch_0
    move-exception v2

    .line 99
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_0

    .line 100
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 106
    const/4 v3, 0x0

    goto :goto_0

    .line 104
    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 98
    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static refresh(Landroid/app/Activity;J)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "account_id"    # J

    .prologue
    .line 52
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v1, Lcom/perm/kate/StickerHints$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/StickerHints$2;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v0, v1, p0}, Lcom/perm/kate/session/Session;->getStickersKeywords(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method public static refreshInThread(JLandroid/app/Activity;)V
    .locals 2
    .param p0, "account_id"    # J
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 71
    new-instance v0, Lcom/perm/kate/StickerHints$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/perm/kate/StickerHints$3;-><init>(Landroid/app/Activity;J)V

    .line 76
    invoke-virtual {v0}, Lcom/perm/kate/StickerHints$3;->start()V

    .line 77
    return-void
.end method

.method private static saveToDisk(Ljava/util/HashMap;J)V
    .locals 7
    .param p1, "account_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;J)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[I>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/perm/kate/StickerHints;->getFileName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 91
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 85
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method static setShowStickerHints(Z)V
    .locals 2
    .param p0, "hint"    # Z

    .prologue
    .line 116
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/StickerHints;->hints_pref_name:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    return-void
.end method
