.class public Lcom/perm/kate/AudioClickHelper;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;
    }
.end annotation


# instance fields
.field audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

.field callback_add:Lcom/perm/kate/session/Callback;

.field context:Lcom/perm/kate/BaseActivity;

.field installClick:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V
    .locals 2
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "audioCallback"    # Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Lcom/perm/kate/AudioClickHelper$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioClickHelper$4;-><init>(Lcom/perm/kate/AudioClickHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->installClick:Landroid/content/DialogInterface$OnClickListener;

    .line 348
    new-instance v0, Lcom/perm/kate/AudioClickHelper$7;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper$7;-><init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->callback_add:Lcom/perm/kate/session/Callback;

    .line 52
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 53
    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .line 54
    return-void
.end method

.method public static PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .locals 3
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "from_player"    # Z
    .param p4, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-static {p0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    .line 317
    :goto_0
    return-void

    .line 304
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 305
    sput-object p0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 306
    if-nez p3, :cond_1

    .line 307
    invoke-static {p2}, Lcom/perm/kate/PlaybackService;->setAudios(Ljava/util/ArrayList;)V

    .line 308
    :cond_1
    sput p4, Lcom/perm/kate/PlaybackService;->source:I

    .line 309
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "play"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static PlayAudioWith(Lcom/perm/kate/api/Audio;Landroid/app/Activity;)V
    .locals 9
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 375
    if-eqz p0, :cond_0

    iget-object v6, p0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 376
    :cond_0
    const-string v6, "Kate.AudioClickHelper"

    const-string v7, "url==null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    goto :goto_0

    .line 384
    :cond_2
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "filename":Ljava/lang/String;
    invoke-static {v1}, Lcom/perm/kate/Helper;->limitFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".mp3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    const-string v6, "Kate.AudioClickHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v5, p0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 390
    .local v5, "url":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/session/Session;->isMusicOverHttp()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 391
    const-string v6, "https://"

    const-string v7, "http://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 392
    :cond_3
    invoke-static {p0}, Lcom/perm/kate/audio_cache/AudioCache;->tryFromCache(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "path_in_cache":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 396
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "audio/*"

    .line 403
    .local v3, "mime":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_5

    .line 404
    const-string v3, "audio/mp3"

    .line 405
    :cond_5
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v6, "com.android.extra.filename"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 409
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mime":Ljava/lang/String;
    .end local v4    # "path_in_cache":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 411
    new-instance v6, Lcom/perm/kate/AudioClickHelper$8;

    invoke-direct {v6, p1}, Lcom/perm/kate/AudioClickHelper$8;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioClickHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper;->showDownloadInstructions()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioClickHelper;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioClickHelper;->showLyricsActivity(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioClickHelper;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/AudioClickHelper;->sendToFriend(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioClickHelper;JJLandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/AudioClickHelper;->showAlbumActivityForMove(JJLandroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioClickHelper;JJLandroid/support/v4/app/Fragment;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/AudioClickHelper;->editAudio(JJLandroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->showBitrate(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->showSimilarAudio(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->makeMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioClickHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->makeAudiosString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private editAudio(JJLandroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "audio_id"    # J
    .param p3, "audio_owner_id"    # J
    .param p5, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/EditAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.audio_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    const-string v1, "com.perm.kate.audio_owner_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    const/16 v1, 0xb

    invoke-virtual {p5, v0, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 231
    return-void
.end method

.method private makeAudiosString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "audios_original":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    const-string v1, ""

    .line 465
    .local v1, "audios_str":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 466
    .local v0, "audio":Lcom/perm/kate/api/Audio;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    goto :goto_0

    .line 470
    .end local v0    # "audio":Lcom/perm/kate/api/Audio;
    :cond_1
    return-object v1
.end method

.method private makeMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "audios1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 458
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/perm/kate/api/Audio;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 459
    .local v0, "a":Lcom/perm/kate/api/Audio;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_0
    return-object v1
.end method

.method public static restricted(Lcom/perm/kate/api/Audio;)Z
    .locals 6
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    const/4 v1, 0x0

    .line 325
    :try_start_0
    sget-boolean v2, Lcom/perm/kate/KApplication;->is_music_restricted:Z

    if-nez v2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/api/Audio;->aid:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 330
    const/4 v1, 0x1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static restrictedToast()V
    .locals 3

    .prologue
    .line 320
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0702fc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    return-void
.end method

.method private sendToFriend(JJ)V
    .locals 5
    .param p1, "audio_owner_id"    # J
    .param p3, "audio_id"    # J

    .prologue
    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "audio_attachment":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v3, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    const-string v2, "com.perm.kate.only_members"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string v2, "com.perm.kate.new_message"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v2, "com.perm.kate.audio_attachment"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method private showAlbumActivityForMove(JJLandroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "aid"    # J
    .param p3, "owner_id"    # J
    .param p5, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.aid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 236
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 237
    const-string v1, "com.perm.kate.is_move"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/16 v2, 0xa

    invoke-static {v1, p5, v0, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 239
    return-void
.end method

.method private showBitrate(Lcom/perm/kate/api/Audio;)V
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->duration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 214
    new-instance v0, Lcom/perm/kate/AudioClickHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AudioClickHelper$3;-><init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    .line 223
    .local v0, "mp3Info_callback":Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;
    new-instance v1, Lcom/perm/utils/Mp3InfoHelper;

    invoke-direct {v1, v0}, Lcom/perm/utils/Mp3InfoHelper;-><init>(Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;)V

    iget-object v2, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/perm/utils/Mp3InfoHelper;->getLength(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDownloadInstructions()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070094

    .line 259
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    .line 260
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ea

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper;->installClick:Landroid/content/DialogInterface$OnClickListener;

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070067

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 265
    return-void
.end method

.method private showLyricsActivity(J)V
    .locals 3
    .param p1, "lyrics_id"    # J

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/LyricsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.lyrics_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method private showSimilarAudio(Lcom/perm/kate/api/Audio;)V
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "target_audio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method


# virtual methods
.method protected AddAudio(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;

    .prologue
    .line 339
    new-instance v0, Lcom/perm/kate/AudioClickHelper$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AudioClickHelper$6;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 345
    invoke-virtual {v0}, Lcom/perm/kate/AudioClickHelper$6;->start()V

    .line 346
    return-void
.end method

.method public CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V
    .locals 9
    .param p1, "a"    # Lcom/perm/kate/api/Audio;
    .param p2, "show_delete"    # Z
    .param p4, "show_delete_from_album"    # Z
    .param p5, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    const/4 v6, 0x1

    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v6

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V

    .line 76
    return-void
.end method

.method public CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V
    .locals 12
    .param p1, "a"    # Lcom/perm/kate/api/Audio;
    .param p2, "show_delete"    # Z
    .param p4, "show_delete_from_album"    # Z
    .param p5, "fragment"    # Lcom/perm/kate/AudioFragment;
    .param p6, "show_bitrate"    # Z
    .param p7, "show_play_next"    # Z
    .param p8, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;Z",
            "Lcom/perm/kate/AudioFragment;",
            "ZZI)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701d9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    if-eqz p7, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f07037d

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701da

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0703f1

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 91
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701e1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_2
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701df

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    if-eqz p2, :cond_6

    .line 94
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701e8

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    if-eqz p4, :cond_3

    .line 96
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f070185

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f07018d

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701d3

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :goto_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v10, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/perm/kate/db/DataHelper;->isAudioCached(JJ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 102
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f070022

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_4
    :goto_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f070094

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    if-eqz p6, :cond_5

    .line 110
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f070263

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_5
    new-instance v9, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v9, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v0, Lcom/perm/kate/AudioClickHelper$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move/from16 v5, p8

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/AudioClickHelper$2;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILcom/perm/kate/AudioFragment;)V

    invoke-virtual {v9, v10, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v8

    .line 194
    .local v8, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v7

    .line 195
    .local v7, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 197
    return-void

    .line 100
    .end local v7    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v8    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_6
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0701cf

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_7
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0703ad

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v10, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v4, v5, v10, v11}, Lcom/perm/kate/db/DataHelper;->getDownloadStatus(JJ)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 106
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0703c4

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public click(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;
    .param p3, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioClickHelper$1;

    invoke-direct {v0, p0, p3}, Lcom/perm/kate/AudioClickHelper$1;-><init>(Lcom/perm/kate/AudioClickHelper;I)V

    .line 68
    .local v0, "callback":Lcom/perm/kate/AudioClickHelperCallback2;
    invoke-virtual {p0, p1, p2, v0}, Lcom/perm/kate/AudioClickHelper;->downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "callback":Lcom/perm/kate/AudioClickHelperCallback2;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected deleteFromAlbum(JLjava/lang/Long;Lcom/perm/kate/AudioFragment;)V
    .locals 5
    .param p1, "aid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "fragment"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 370
    if-eqz p4, :cond_0

    .line 371
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, p3, v1}, Lcom/perm/kate/AudioFragment;->moveToAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 372
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 479
    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 480
    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .line 481
    return-void
.end method

.method downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    .locals 1
    .param p1, "audio_original"    # Lcom/perm/kate/api/Audio;
    .param p3, "callback2"    # Lcom/perm/kate/AudioClickHelperCallback2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;",
            "Lcom/perm/kate/AudioClickHelperCallback2;",
            ")V"
        }
    .end annotation

    .prologue
    .line 421
    .local p2, "audios_original":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    new-instance v0, Lcom/perm/kate/AudioClickHelper$9;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/perm/kate/AudioClickHelper$9;-><init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;Lcom/perm/kate/AudioClickHelperCallback2;Ljava/util/ArrayList;)V

    .line 453
    invoke-virtual {v0}, Lcom/perm/kate/AudioClickHelper$9;->start()V

    .line 454
    return-void
.end method

.method public fetchAndPlayAudio(Lcom/perm/kate/api/Audio;Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;
    .param p2, "context"    # Landroid/app/Activity;
    .param p4, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/api/Audio;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioClickHelper$5;

    invoke-direct {v0, p0, p2, p4}, Lcom/perm/kate/AudioClickHelper$5;-><init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;I)V

    .line 289
    .local v0, "callback":Lcom/perm/kate/AudioClickHelperCallback2;
    invoke-virtual {p0, p1, p3, v0}, Lcom/perm/kate/AudioClickHelper;->downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "callback":Lcom/perm/kate/AudioClickHelperCallback2;
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v1

    .line 291
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 292
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
