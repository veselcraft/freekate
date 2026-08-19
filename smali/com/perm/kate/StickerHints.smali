.class public abstract Lcom/perm/kate/StickerHints;
.super Ljava/lang/Object;
.source "StickerHints.java"


# static fields
.field static hints:Ljava/util/HashMap;

.field static hints_pref_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    const-string v0, "sticker_hints"

    .line 115
    sput-object v0, Lcom/perm/kate/StickerHints;->hints_pref_name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(J)Ljava/util/HashMap;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/perm/kate/StickerHints;->loadFromDisk(J)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;J)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/perm/kate/StickerHints;->refresh(Landroid/app/Activity;J)V

    return-void
.end method

.method static synthetic access$200(Ljava/util/HashMap;J)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/perm/kate/StickerHints;->saveToDisk(Ljava/util/HashMap;J)V

    return-void
.end method

.method public static get(Ljava/lang/String;J)[I
    .locals 3

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_0

    return-object v1

    .line 23
    :cond_0
    sget-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_1

    return-object v1

    .line 26
    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private static getFileName(J)Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sk-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getShowStickerHints()Z
    .locals 3

    .line 122
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

    .line 32
    sget-object v0, Lcom/perm/kate/StickerHints;->hints:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Lcom/perm/kate/StickerHints$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/StickerHints$1;-><init>(JLandroid/app/Activity;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static loadFromDisk(J)Ljava/util/HashMap;
    .locals 4

    const/4 v0, 0x0

    .line 98
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0, p1}, Lcom/perm/kate/StickerHints;->getFileName(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 101
    :goto_0
    :try_start_2
    instance-of p1, p0, Ljava/io/FileNotFoundException;

    if-nez p1, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 106
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 107
    throw p0
.end method

.method private static refresh(Landroid/app/Activity;J)V
    .locals 2

    .line 52
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v1, Lcom/perm/kate/StickerHints$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/StickerHints$2;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v0, v1, p0}, Lcom/perm/kate/session/Session;->getStickersKeywords(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method public static refreshInThread(JLandroid/app/Activity;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/perm/kate/StickerHints$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/perm/kate/StickerHints$3;-><init>(Landroid/app/Activity;J)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static saveToDisk(Ljava/util/HashMap;J)V
    .locals 4

    const/4 v0, 0x0

    .line 85
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1, p2}, Lcom/perm/kate/StickerHints;->getFileName(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v3, p1, p2}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 88
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 92
    throw p0
.end method

.method static setShowStickerHints(Z)V
    .locals 2

    .line 118
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/StickerHints;->hints_pref_name:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
