.class public abstract Lcom/perm/kate/audio_cache/AudioCache;
.super Ljava/lang/Object;
.source "AudioCache.java"


# static fields
.field public static PATH_PREF_NAME:Ljava/lang/String; = "audio_cache_dir"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 246
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCache$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/audio_cache/AudioCache$2;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 3

    .line 57
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/audio_cache/AudioCache;->PATH_PREF_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v1
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.Kate/audio_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
