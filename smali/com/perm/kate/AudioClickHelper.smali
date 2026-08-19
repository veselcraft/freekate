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

.field callback_delete:Lcom/perm/kate/session/Callback;

.field context:Lcom/perm/kate/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    new-instance v0, Lcom/perm/kate/AudioClickHelper$9;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper$9;-><init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->callback_add:Lcom/perm/kate/session/Callback;

    .line 577
    new-instance v0, Lcom/perm/kate/AudioClickHelper$12;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper$12;-><init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 58
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 59
    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    if-nez p2, :cond_0

    .line 62
    new-instance p1, Lcom/perm/kate/AudioClickHelper$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/AudioClickHelper$1;-><init>(Lcom/perm/kate/AudioClickHelper;)V

    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    :cond_0
    return-void
.end method

.method public static PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V
    .locals 1

    .line 469
    invoke-static {p0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    return-void

    .line 474
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 478
    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 479
    sput-object p0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez p3, :cond_2

    .line 481
    invoke-static {p2}, Lcom/perm/kate/PlaybackService;->setAudios(Ljava/util/ArrayList;)V

    .line 482
    :cond_2
    sput p4, Lcom/perm/kate/PlaybackService;->source:I

    .line 483
    new-instance p0, Landroid/content/Intent;

    const-class p2, Lcom/perm/kate/PlaybackService;

    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "play"

    .line 484
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 488
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 489
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 31
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioClickHelper;JJ)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/AudioClickHelper;->showLyricsActivity(JJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->copyPodcast(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->makeMap(Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->makeAudiosString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioClickHelper;JJLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/AudioClickHelper;->sendToFriend(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioClickHelper;JJLandroidx/fragment/app/Fragment;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/AudioClickHelper;->editAudio(JJLandroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->showBitrate(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->showSimilarAudio(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->showShareDialogForPodcast(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->sendToFriend(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioClickHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/AudioClickHelper;->repostToGroup()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioClickHelper;->sharePodcast(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method private copyPodcast(Lcom/perm/kate/api/Audio;)V
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://vk.com/podcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 346
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private editAudio(JJLandroidx/fragment/app/Fragment;)V
    .locals 3

    .line 384
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/EditAudioActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.audio_id"

    .line 385
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.audio_owner_id"

    .line 386
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/16 p2, 0xb

    invoke-static {p1, p5, v0, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method private makeAudiosString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    .line 679
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 680
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    iget-object v3, v1, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private makeMap(Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 5

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private repostToGroup()V
    .locals 3

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_group"

    const/4 v2, 0x1

    .line 335
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static restricted(Lcom/perm/kate/api/Audio;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static restrictedToast()V
    .locals 3

    .line 494
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v1, 0x7f0f035e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static searchSongArtist(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V
    .locals 3

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_audio"

    const/4 v2, 0x1

    .line 351
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.search_audio_artist"

    .line 352
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendToFriend(JJLjava/lang/String;)V
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 410
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 411
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 412
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 413
    iget-object p3, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class p4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p3, 0x0

    const-string p4, "com.perm.kate.only_members"

    .line 414
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p3, 0x1

    const-string p4, "com.perm.kate.new_message"

    .line 415
    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "com.perm.kate.photo_attachment"

    .line 416
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendToFriend(Lcom/perm/kate/api/Audio;)V
    .locals 4

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.only_members"

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.new_message"

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "podcast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.perm.kate.photo_attachment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sharePodcast(Lcom/perm/kate/api/Audio;)V
    .locals 3

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://vk.com/podcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 341
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->share(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private showBitrate(Lcom/perm/kate/api/Audio;)V
    .locals 5

    .line 363
    invoke-static {p1}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->restrictedToast()V

    return-void

    .line 369
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    .line 371
    :cond_1
    new-instance v0, Lcom/perm/kate/AudioClickHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AudioClickHelper$6;-><init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    .line 380
    new-instance v1, Lcom/perm/utils/Mp3InfoHelper;

    invoke-direct {v1, v0}, Lcom/perm/utils/Mp3InfoHelper;-><init>(Lcom/perm/utils/Mp3InfoHelper$Mp3InfoCallback;)V

    iget-object p1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/perm/utils/Mp3InfoHelper;->getLength(Ljava/lang/String;)V

    return-void
.end method

.method private showLyricsActivity(JJ)V
    .locals 3

    .line 402
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/LyricsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.lyrics_id"

    .line 403
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "audio_id"

    .line 404
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 405
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showShareDialogForPodcast(Lcom/perm/kate/api/Audio;)V
    .locals 5

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023a

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0411

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0412

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01db

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/AudioClickHelper$5;

    invoke-direct {v4, p0, v0, p1}, Lcom/perm/kate/AudioClickHelper$5;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 309
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 310
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSimilarAudio(Lcom/perm/kate/api/Audio;)V
    .locals 4

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "target_audio"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected AddAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1

    .line 516
    new-instance v0, Lcom/perm/kate/AudioClickHelper$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/AudioClickHelper$8;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v8, p5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 92
    invoke-virtual/range {v0 .. v17}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 16

    move-object/from16 v3, p1

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0235

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    if-eqz p7, :cond_1

    .line 98
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v13, :cond_1

    .line 104
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f03e7

    const/16 v4, 0xf

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0482

    const/16 v4, 0xe

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f02aa

    const/16 v4, 0x10

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, v3, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    .line 109
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f023c

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_2
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f023a

    const/16 v4, 0xb

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0038

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p17, :cond_3

    .line 114
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f003a

    const/16 v4, 0x12

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p2, :cond_5

    if-eqz p4, :cond_4

    .line 117
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01e4

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01ec

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz p15, :cond_6

    .line 121
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_6

    .line 122
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00bc

    const/16 v4, 0x11

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_7

    .line 124
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f022f

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_7
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f022b

    invoke-direct {v0, v1, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v6, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAudioCached(JJ)Z

    if-eqz p6, :cond_8

    .line 136
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f02bc

    const/16 v4, 0xd

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_8
    new-instance v14, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v14, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v12, Lcom/perm/kate/AudioClickHelper$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p8

    move-object/from16 v6, p12

    move-object/from16 v7, p11

    move-object/from16 v8, p13

    move/from16 v9, p14

    move-object/from16 v10, p5

    move-object v13, v11

    move-object v15, v12

    move-wide/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lcom/perm/kate/AudioClickHelper$3;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/AudioFragment;J)V

    invoke-virtual {v14, v13, v15}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 233
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected DeleteAudio(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 567
    new-instance v0, Lcom/perm/kate/AudioClickHelper$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AudioClickHelper$11;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public click(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 73
    :try_start_0
    new-instance v6, Lcom/perm/kate/AudioClickHelper$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper$2;-><init>(Lcom/perm/kate/AudioClickHelper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual/range {p0 .. p6}, Lcom/perm/kate/AudioClickHelper;->createPodcastMenu(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2, v6}, Lcom/perm/kate/AudioClickHelper;->downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 87
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected confirmDeleteAudio(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 551
    new-instance v0, Lcom/perm/kate/AudioClickHelper$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AudioClickHelper$10;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 557
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 558
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 559
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 560
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 561
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 562
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 563
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public createPodcastMenu(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f0235

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f023c

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f025c

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f02ba

    const/16 v3, 0xca

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v9, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v10, p0

    iget-object v0, v10, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 243
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v12, Lcom/perm/kate/AudioClickHelper$4;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/AudioClickHelper$4;-><init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 270
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected deleteFromAlbum(JLjava/lang/Long;Lcom/perm/kate/AudioFragment;J)V
    .locals 0

    if-eqz p4, :cond_0

    .line 547
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p1, p3, p2}, Lcom/perm/kate/AudioFragment;->removeFromAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 696
    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 697
    iput-object v0, p0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    return-void
.end method

.method downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    .locals 1

    .line 635
    new-instance v0, Lcom/perm/kate/AudioClickHelper$13;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/perm/kate/AudioClickHelper$13;-><init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;Lcom/perm/kate/AudioClickHelperCallback2;Ljava/util/ArrayList;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public fetchAndPlayAudio(Lcom/perm/kate/api/Audio;Landroid/app/Activity;Ljava/util/ArrayList;I)V
    .locals 2

    .line 449
    :try_start_0
    new-instance v0, Lcom/perm/kate/AudioClickHelper$7;

    invoke-direct {v0, p0, p2, p4}, Lcom/perm/kate/AudioClickHelper$7;-><init>(Lcom/perm/kate/AudioClickHelper;Landroid/app/Activity;I)V

    .line 455
    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 459
    invoke-static {p1, p2, p3, v0, p4}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/perm/kate/AudioClickHelper;->downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 463
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 464
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendToWall(Lcom/perm/kate/api/Audio;J)V
    .locals 4

    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-eqz v3, :cond_0

    const-string v1, "com.perm.kate.owner_id"

    .line 326
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 327
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "podcast"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.audio_attachment"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showAlbumActivityForMove(Ljava/util/ArrayList;JLandroidx/fragment/app/Fragment;J)V
    .locals 2

    .line 393
    new-instance p4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const-class v1, Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "audio_ids"

    .line 394
    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "audio_owner_id"

    .line 395
    invoke-virtual {p4, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.owner_id"

    .line 396
    invoke-virtual {p4, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.is_move"

    const/4 p2, 0x1

    .line 397
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 398
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
