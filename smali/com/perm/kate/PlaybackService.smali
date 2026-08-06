.class public Lcom/perm/kate/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;,
        Lcom/perm/kate/PlaybackService$TestPhoneStateListener;,
        Lcom/perm/kate/PlaybackService$AudioFocus;
    }
.end annotation


# static fields
.field static ad_playing:Z

.field static audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private static callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/Player$PlayerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public static episode:Lcom/perm/kate/api/Audio;

.field static is_shuffle:Z

.field private static playback_start:J

.field public static player:Lcom/perm/kate/Player;

.field static position:I

.field private static primary_audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field static source:I


# instance fields
.field adPlayerListener:Lcom/my/target/ads/instream/InstreamAudioAdPlayer$AdPlayerListener;

.field delayedStopRunnable:Ljava/lang/Runnable;

.field mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

.field mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mMediaButtonReceiverComponent:Landroid/content/ComponentName;

.field private mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

.field musicFocusable:Lcom/perm/kate/music/MusicFocusable;

.field myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

.field notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private pause_if_call:Z

.field phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field private final stopDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    sput-boolean v2, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    .line 132
    sput v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 182
    sput-boolean v2, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    .line 474
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perm/kate/PlaybackService;->playback_start:J

    .line 492
    sput v2, Lcom/perm/kate/PlaybackService;->source:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    .line 66
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 630
    const v0, 0x3a980

    iput v0, p0, Lcom/perm/kate/PlaybackService;->stopDelay:I

    .line 802
    new-instance v0, Lcom/perm/kate/PlaybackService$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$3;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 913
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 914
    new-instance v0, Lcom/perm/kate/PlaybackService$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$4;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    .line 1087
    new-instance v0, Lcom/perm/kate/PlaybackService$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$5;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->musicFocusable:Lcom/perm/kate/music/MusicFocusable;

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->cancelNotification()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->notifyStateChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PlaybackService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    return v0
.end method

.method static synthetic access$202(Lcom/perm/kate/PlaybackService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    return p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->resume()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pauseForCall()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->trackAudioAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()V

    return-void
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/PlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->repeat()V

    return-void
.end method

.method public static addCallback(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/perm/kate/Player$PlayerCallback;

    .prologue
    .line 147
    invoke-static {}, Lcom/perm/kate/PlaybackService;->removeEmptyReferences()V

    .line 148
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private cancelNotification()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PlaybackService;->stopForeground(Z)V

    .line 745
    return-void
.end method

.method static changeShuffleState()V
    .locals 3

    .prologue
    .line 1122
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1136
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-eqz v0, :cond_2

    .line 1125
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1128
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1130
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1133
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1134
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private createAudioFocusHelperWithReflection()V
    .locals 7

    .prologue
    .line 1108
    const-string v1, "com.perm.kate.music.AudioFocusHelper"

    .line 1111
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1112
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lcom/perm/kate/music/MusicFocusable;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1113
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/perm/kate/PlaybackService;->musicFocusable:Lcom/perm/kate/music/MusicFocusable;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/music/AudioFocusHelperInterface;

    iput-object v4, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v3

    .line 1115
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1116
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private displayNotification(Z)V
    .locals 20
    .param p1, "foreground"    # Z

    .prologue
    .line 659
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-class v17, Lcom/perm/kate/PlayerActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v17, 0x14000000

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 661
    const-string v17, "com.audioanywhere.from_notification"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 663
    const/4 v9, 0x0

    .line 664
    .local v9, "notification":Landroid/app/Notification;
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 666
    new-instance v7, Landroid/content/Intent;

    const-class v17, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    .local v7, "intent_play_pause_resume":Landroid/content/Intent;
    sget-object v17, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v17, :cond_2

    sget-object v17, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    sget-object v17, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    sget-object v17, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v16, 0x1

    .line 671
    .local v16, "v":Z
    :goto_0
    if-eqz v16, :cond_3

    .line 672
    const-string v17, "pause"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    :goto_1
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 681
    .local v13, "playPendingIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-class v17, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    .local v8, "intent_previous":Landroid/content/Intent;
    const-string v17, "previous"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 685
    .local v12, "pendingIntentPrevious":Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    const-class v17, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 686
    .local v6, "intent_next":Landroid/content/Intent;
    const-string v17, "next"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 689
    .local v11, "pendingIntentNext":Landroid/app/PendingIntent;
    new-instance v5, Landroid/content/Intent;

    const-class v17, Lcom/perm/kate/PlaybackService;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    .local v5, "intent_hide":Landroid/content/Intent;
    const-string v17, "hide_notification"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 694
    .local v10, "pendingIntentHide":Landroid/app/PendingIntent;
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/PlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f030032

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 696
    .local v14, "remoteViews":Landroid/widget/RemoteViews;
    const v17, 0x7f0e00ae

    sget-object v18, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 697
    const v17, 0x7f0e00af

    sget-object v18, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 698
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x15

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 699
    const v18, 0x7f0e00ac

    if-eqz v16, :cond_5

    const v17, 0x7f02015a

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 707
    :goto_3
    const v17, 0x7f0e00ab

    move/from16 v0, v17

    invoke-virtual {v14, v0, v12}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 708
    const v17, 0x7f0e00ac

    move/from16 v0, v17

    invoke-virtual {v14, v0, v13}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 709
    const v17, 0x7f0e00ad

    move/from16 v0, v17

    invoke-virtual {v14, v0, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 710
    const v17, 0x7f0e0081

    move/from16 v0, v17

    invoke-virtual {v14, v0, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 714
    new-instance v17, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 715
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    const v18, 0x7f020146

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 730
    .end local v5    # "intent_hide":Landroid/content/Intent;
    .end local v6    # "intent_next":Landroid/content/Intent;
    .end local v7    # "intent_play_pause_resume":Landroid/content/Intent;
    .end local v8    # "intent_previous":Landroid/content/Intent;
    .end local v10    # "pendingIntentHide":Landroid/app/PendingIntent;
    .end local v11    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v12    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v13    # "playPendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v16    # "v":Z
    :goto_4
    iget v0, v9, Landroid/app/Notification;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 731
    if-eqz p1, :cond_9

    .line 732
    const/16 v17, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/perm/kate/PlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 733
    const-string v17, "Kate.PlaybackService"

    const-string v18, "start foreground state"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "notification":Landroid/app/Notification;
    :goto_5
    return-void

    .line 667
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent_play_pause_resume":Landroid/content/Intent;
    .restart local v9    # "notification":Landroid/app/Notification;
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 674
    .restart local v16    # "v":Z
    :cond_3
    sget-object v17, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v17, :cond_4

    .line 675
    const-string v17, "resume"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 736
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "intent_play_pause_resume":Landroid/content/Intent;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v16    # "v":Z
    :catch_0
    move-exception v15

    .line 737
    .local v15, "th":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 738
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 677
    .end local v15    # "th":Ljava/lang/Throwable;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent_play_pause_resume":Landroid/content/Intent;
    .restart local v9    # "notification":Landroid/app/Notification;
    .restart local v16    # "v":Z
    :cond_4
    :try_start_1
    const-string v17, "play"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 699
    .restart local v5    # "intent_hide":Landroid/content/Intent;
    .restart local v6    # "intent_next":Landroid/content/Intent;
    .restart local v8    # "intent_previous":Landroid/content/Intent;
    .restart local v10    # "pendingIntentHide":Landroid/app/PendingIntent;
    .restart local v11    # "pendingIntentNext":Landroid/app/PendingIntent;
    .restart local v12    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .restart local v13    # "playPendingIntent":Landroid/app/PendingIntent;
    .restart local v14    # "remoteViews":Landroid/widget/RemoteViews;
    :cond_5
    const v17, 0x7f02015f

    goto/16 :goto_2

    .line 701
    :cond_6
    const v18, 0x7f0e00ac

    if-eqz v16, :cond_7

    const v17, 0x7f02015b

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 702
    const v17, 0x7f0e00ab

    const v18, 0x7f020165

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 703
    const v17, 0x7f0e00ad

    const v18, 0x7f020156

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 704
    const v17, 0x7f0e0081

    const v18, 0x7f02006c

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_3

    .line 701
    :cond_7
    const v17, 0x7f020160

    goto :goto_6

    .line 723
    .end local v5    # "intent_hide":Landroid/content/Intent;
    .end local v6    # "intent_next":Landroid/content/Intent;
    .end local v7    # "intent_play_pause_resume":Landroid/content/Intent;
    .end local v8    # "intent_previous":Landroid/content/Intent;
    .end local v10    # "pendingIntentHide":Landroid/app/PendingIntent;
    .end local v11    # "pendingIntentNext":Landroid/app/PendingIntent;
    .end local v12    # "pendingIntentPrevious":Landroid/app/PendingIntent;
    .end local v13    # "playPendingIntent":Landroid/app/PendingIntent;
    .end local v14    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v16    # "v":Z
    :cond_8
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v3, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v17, 0x7f020147

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v17

    const v18, 0x7f070527

    .line 725
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/perm/kate/PlaybackService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v17

    sget-object v18, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 726
    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 727
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 728
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v9

    goto/16 :goto_4

    .line 735
    .end local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/perm/kate/PlaybackService;->simpleDisplayNotification(Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5
.end method

.method private getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;
    .locals 3
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 560
    const/4 v1, 0x0

    .line 562
    .local v1, "uri":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 563
    iget-object v2, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 564
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 566
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/audio_cache/AudioCache;->tryFromCache(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "path_in_cache":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 568
    move-object v1, v0

    .line 570
    .end local v0    # "path_in_cache":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private static getSourceForAd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    sget v0, Lcom/perm/kate/PlaybackService;->source:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :pswitch_0
    const-string v0, "other"

    :goto_0
    return-object v0

    .line 369
    :pswitch_1
    const-string v0, "user_wall"

    goto :goto_0

    .line 371
    :pswitch_2
    const-string v0, "group_wall"

    goto :goto_0

    .line 373
    :pswitch_3
    const-string v0, "feed"

    goto :goto_0

    .line 375
    :pswitch_4
    const-string v0, "group_list"

    goto :goto_0

    .line 377
    :pswitch_5
    const-string v0, "global_search"

    goto :goto_0

    .line 379
    :pswitch_6
    const-string v0, "im"

    goto :goto_0

    .line 381
    :pswitch_7
    const-string v0, "user_status"

    goto :goto_0

    .line 383
    :pswitch_8
    const-string v0, "group_status"

    goto :goto_0

    .line 385
    :pswitch_9
    const-string v0, "my"

    goto :goto_0

    .line 387
    :pswitch_a
    const-string v0, "user_list"

    goto :goto_0

    .line 389
    :pswitch_b
    const-string v0, "recs"

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private static getSourceForAudio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    sget v0, Lcom/perm/kate/PlaybackService;->source:I

    packed-switch v0, :pswitch_data_0

    .line 542
    :pswitch_0
    const-string v0, "audios_user"

    :goto_0
    return-object v0

    .line 519
    :pswitch_1
    const-string v0, "wall_user"

    goto :goto_0

    .line 521
    :pswitch_2
    const-string v0, "wall_group"

    goto :goto_0

    .line 523
    :pswitch_3
    const-string v0, "news"

    goto :goto_0

    .line 525
    :pswitch_4
    const-string v0, "audios_group"

    goto :goto_0

    .line 527
    :pswitch_5
    const-string v0, "search"

    goto :goto_0

    .line 529
    :pswitch_6
    const-string v0, "comments"

    goto :goto_0

    .line 531
    :pswitch_7
    const-string v0, "messages"

    goto :goto_0

    .line 534
    :pswitch_8
    const-string v0, "status"

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v1, 0x0

    .line 402
    :try_start_0
    const-string v3, "Kate.PlaybackService"

    const-string v4, "handleStart"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v3, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "action":Ljava/lang/String;
    const-string v3, "play"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 410
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v3, :cond_0

    .line 412
    const/4 v3, 0x0

    sput v3, Lcom/perm/kate/PlaybackService;->position:I

    .line 414
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    const/4 v1, 0x1

    .line 415
    .local v1, "is_voice":Z
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_8

    if-nez v1, :cond_8

    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->shouldPlayAd()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 416
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->initAd()V

    .line 424
    .end local v1    # "is_voice":Z
    :cond_3
    :goto_1
    const-string v3, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 425
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    .line 426
    :cond_4
    const-string v3, "next"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 427
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v3, :cond_0

    .line 429
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 430
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()V

    .line 432
    :cond_5
    const-string v3, "previous"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 433
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v3, :cond_0

    .line 435
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 436
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playPrevious()V

    .line 438
    :cond_6
    const-string v3, "resume"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 439
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->resume()V

    .line 440
    :cond_7
    const-string v3, "hide_notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->cancelNotification()V

    .line 442
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    .line 443
    sget-object v3, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v3}, Lcom/perm/kate/Player;->pause()V

    .line 444
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v3}, Lcom/perm/utils/LastFmHelper;->sendBroadcastPause(Lcom/perm/kate/api/Audio;)V

    .line 445
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 446
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    .line 447
    const/4 v3, 0x0

    sput-boolean v3, Lcom/perm/kate/PlaybackService;->is_shuffle:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 450
    .end local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 451
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 452
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 418
    .end local v2    # "th":Ljava/lang/Throwable;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "is_voice":Z
    :cond_8
    :try_start_1
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_9

    .line 419
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v3}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    goto :goto_1

    .line 421
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private initAd()V
    .locals 8

    .prologue
    const/4 v2, 0x2

    .line 189
    new-instance v0, Lcom/my/target/ads/instream/InstreamAudioAd;

    const v3, 0x10ede

    invoke-direct {v0, v3, p0}, Lcom/my/target/ads/instream/InstreamAudioAd;-><init>(ILandroid/content/Context;)V

    .line 190
    .local v0, "ad":Lcom/my/target/ads/instream/InstreamAudioAd;
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    const-string v4, "puid1"

    const-string v5, "596"

    invoke-virtual {v3, v4, v5}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    const-string v4, "puid2"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    const-string v4, "puid3"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    const-string v4, "content_id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v3, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/my/target/ads/CustomParams;->setVKId(Ljava/lang/String;)V

    .line 199
    :cond_1
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_2

    .line 200
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    const-string v4, "duration"

    sget-object v5, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v5, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/my/target/ads/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-static {}, Lcom/perm/kate/BaseActivity;->getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;

    move-result-object v1

    .line 202
    .local v1, "targeting_params":Lcom/perm/kate/BaseActivity$TargetingParams;
    if-eqz v1, :cond_5

    .line 203
    iget-object v3, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/my/target/ads/CustomParams;->setAge(I)V

    .line 205
    :cond_3
    iget-object v3, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    .line 206
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->getCustomParams()Lcom/my/target/ads/CustomParams;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {v3, v2}, Lcom/my/target/ads/CustomParams;->setGender(I)V

    .line 210
    :cond_5
    new-instance v2, Lcom/perm/kate/PlaybackService$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/PlaybackService$1;-><init>(Lcom/perm/kate/PlaybackService;)V

    invoke-virtual {v0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->setPlayer(Lcom/my/target/ads/instream/InstreamAudioAdPlayer;)V

    .line 272
    new-instance v2, Lcom/perm/kate/PlaybackService$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/PlaybackService$2;-><init>(Lcom/perm/kate/PlaybackService;)V

    invoke-virtual {v0, v2}, Lcom/my/target/ads/instream/InstreamAudioAd;->setListener(Lcom/my/target/ads/instream/InstreamAudioAd$InstreamAudioAdListener;)V

    .line 354
    invoke-virtual {v0}, Lcom/my/target/ads/instream/InstreamAudioAd;->load()V

    .line 356
    const-string v2, "requested"

    invoke-direct {p0, v2}, Lcom/perm/kate/PlaybackService;->trackAudioAd(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method private initRemoteControlClient()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1045
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1047
    new-instance v1, Lcom/perm/kate/RemoteControlClientCompat;

    .line 1048
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/perm/kate/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    .line 1050
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    invoke-static {v1, v2}, Lcom/perm/kate/RemoteControlHelper;->registerRemoteControlClient(Landroid/media/AudioManager;Lcom/perm/kate/RemoteControlClientCompat;)V

    .line 1051
    return-void
.end method

.method private notifyStateChanged()V
    .locals 3

    .prologue
    .line 1006
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1007
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1008
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    .line 1009
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    .line 1010
    return-void
.end method

.method private pause()V
    .locals 3

    .prologue
    .line 634
    :try_start_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1}, Lcom/perm/kate/Player;->pause()V

    .line 635
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastPause(Lcom/perm/kate/api/Audio;)V

    .line 637
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->stopForegroundWithNotification()V

    .line 639
    iget-boolean v1, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    if-nez v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    .line 641
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 642
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 644
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_1

    .line 645
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 646
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 647
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPauseStateRemoteControlClient()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :cond_2
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v2, v2, Lcom/perm/kate/Player;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pauseForCall()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    .line 125
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    .line 127
    :cond_0
    return-void
.end method

.method private play(Lcom/perm/kate/api/Audio;)V
    .locals 4
    .param p1, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/perm/kate/PlaybackService;->playback_start:J

    .line 463
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 464
    invoke-static {p1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastStart(Lcom/perm/kate/api/Audio;)V

    .line 465
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 466
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 467
    invoke-static {p1}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 468
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 469
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->updateRemoteControlClientData()V

    goto :goto_0
.end method

.method private playNext()V
    .locals 4

    .prologue
    .line 755
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v2, v2, Lcom/perm/kate/Player;->state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 777
    :goto_0
    return-void

    .line 757
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getNext()Lcom/perm/kate/api/Audio;

    move-result-object v1

    .line 758
    .local v1, "e":Lcom/perm/kate/api/Audio;
    if-nez v1, :cond_1

    .line 761
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getFirst()Lcom/perm/kate/api/Audio;

    move-result-object v1

    .line 764
    :cond_1
    if-nez v1, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->stopForegroundWithNotification()V

    .line 767
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    goto :goto_0

    .line 771
    :cond_2
    sput-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 773
    sget-object v2, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 774
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 775
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v2}, Lcom/perm/kate/Player$PlayerCallback;->onNextEpisode()V

    goto :goto_1

    .line 776
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_4
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v2}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    goto :goto_0
.end method

.method static playNext(Lcom/perm/kate/api/Audio;)V
    .locals 6
    .param p0, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 1139
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1143
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v1, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 1144
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1148
    :cond_3
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private playPrevious()V
    .locals 4

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getPrevious()Lcom/perm/kate/api/Audio;

    move-result-object v1

    .line 788
    .local v1, "e":Lcom/perm/kate/api/Audio;
    if-nez v1, :cond_0

    .line 790
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->stopForegroundWithNotification()V

    .line 791
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    .line 800
    :goto_0
    return-void

    .line 794
    :cond_0
    sput-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 796
    sget-object v2, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 797
    .local v0, "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 798
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v2}, Lcom/perm/kate/Player$PlayerCallback;->onNextEpisode()V

    goto :goto_1

    .line 799
    .end local v0    # "callback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_2
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v2}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    goto :goto_0
.end method

.method private registerMediaButtonEventReceiver()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/perm/kate/MediaButtonHelper;->registerMediaButtonEventReceiverCompat(Landroid/media/AudioManager;Landroid/content/ComponentName;)V

    .line 1020
    return-void
.end method

.method private registerMyNoisyAudioStreamReceiver()V
    .locals 4

    .prologue
    .line 985
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 986
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/perm/kate/PlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 987
    const-string v2, "Kate.PlaybackService"

    const-string v3, "register myNoisyAudioStreamReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 990
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 3
    .param p0, "callback"    # Lcom/perm/kate/Player$PlayerCallback;

    .prologue
    .line 152
    invoke-static {}, Lcom/perm/kate/PlaybackService;->removeEmptyReferences()V

    .line 153
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 154
    .local v0, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 155
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    .end local v0    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/Player$PlayerCallback;>;"
    :cond_1
    return-void
.end method

.method private static removeEmptyReferences()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 163
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method private repeat()V
    .locals 2

    .prologue
    .line 547
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->resume()V

    .line 550
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/LastFmHelper;->sendBroadcastStart(Lcom/perm/kate/api/Audio;)V

    .line 551
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 553
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 554
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 555
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->updateRemoteControlClientData()V

    goto :goto_0
.end method

.method private static restorePosition(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 609
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 610
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/perm/kate/PlaybackService;->position:I

    .line 611
    const-string v1, "Kate.PlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restorePosition:position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-void
.end method

.method public static restoreState(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 598
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 601
    .local v2, "settings":Landroid/content/SharedPreferences;
    const-string v3, "audio_id"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 602
    .local v0, "id":J
    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    .line 604
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAudio(J)Lcom/perm/kate/api/Audio;

    move-result-object v3

    sput-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 605
    invoke-static {p0}, Lcom/perm/kate/PlaybackService;->restorePosition(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private resume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 615
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 618
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-ne v0, v2, :cond_2

    .line 619
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->resume()V

    .line 620
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/LastFmHelper;->sendBroadcastResume(Lcom/perm/kate/api/Audio;)V

    .line 622
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 623
    :cond_3
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 624
    :cond_4
    invoke-direct {p0, v2}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 625
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPlayStateRemoteControlClient()V

    goto :goto_0
.end method

.method private saveState()V
    .locals 8

    .prologue
    .line 574
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v4, :cond_0

    .line 594
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 577
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "audio_id"

    sget-object v5, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v5, Lcom/perm/kate/api/Audio;->aid:J

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 581
    const/4 v2, 0x0

    .line 583
    .local v2, "p":I
    :try_start_0
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-eqz v4, :cond_1

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 584
    :cond_1
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v4}, Lcom/perm/kate/Player;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 589
    :cond_2
    :goto_1
    const-string v4, "Kate.PlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saving position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v4, "position"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 591
    sput v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "ex":Ljava/lang/IllegalStateException;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 587
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method

.method static setAudios(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    sput-object p0, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    .line 143
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    .line 144
    return-void
.end method

.method private setPauseStateRemoteControlClient()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/perm/kate/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method private setPlayStateRemoteControlClient()V
    .locals 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/perm/kate/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1056
    :cond_0
    return-void
.end method

.method private simpleDisplayNotification(Landroid/app/Notification;)V
    .locals 2
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 96
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 97
    .local v0, "mNM":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 98
    return-void
.end method

.method private stopForegroundWithNotification()V
    .locals 3

    .prologue
    .line 782
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 783
    .local v0, "hide_notification":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->stopForeground(Z)V

    .line 784
    return-void

    .line 782
    .end local v0    # "hide_notification":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private trackAudioAd(Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v1, "{\"e\":\"audio_ad\",\"event\":\"%s\",\"section \":\"%s\"}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 361
    invoke-static {}, Lcom/perm/kate/PlaybackService;->getSourceForAd()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 360
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "e":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/utils/VkStatsReporter;->report(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method static trackAudioPlay(Ljava/lang/Long;)V
    .locals 10
    .param p0, "pos"    # Ljava/lang/Long;

    .prologue
    .line 498
    :try_start_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    if-nez p0, :cond_2

    .line 501
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 502
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 504
    const-string v2, "{\"e\":\"audio_play\",\"audio_id\":\"%s\",\"source\":\"%s\", \"uuid\": %s, \"duration\": %d, \"start_time\": %d}"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 506
    invoke-static {}, Lcom/perm/kate/PlaybackService;->getSourceForAudio()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    const/4 v4, 0x4

    sget-wide v6, Lcom/perm/kate/PlaybackService;->playback_start:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 505
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "event":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/utils/VkStatsReporter;->report(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    .end local v0    # "event":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unregisterMediaButtonEventReceiver()V
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/perm/kate/MediaButtonHelper;->unregisterMediaButtonEventReceiverCompat(Landroid/media/AudioManager;Landroid/content/ComponentName;)V

    .line 1024
    return-void
.end method

.method private unregisterMyNoisyAudioStreamReceiver()V
    .locals 3

    .prologue
    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 997
    const-string v1, "Kate.PlaybackService"

    const-string v2, "unregister myNoisyAudioStreamReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1000
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateRemoteControlClientData()V
    .locals 4

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    if-nez v0, :cond_0

    .line 1028
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->initRemoteControlClient()V

    .line 1029
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPlayStateRemoteControlClient()V

    .line 1031
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Lcom/perm/kate/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 1036
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/RemoteControlClientCompat;->editMetadata(Z)Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 1038
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/4 v1, 0x7

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 1039
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    const/16 v1, 0x9

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->duration:J

    .line 1040
    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;->putLong(IJ)Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 1042
    :cond_1
    return-void
.end method


# virtual methods
.method getFirst()Lcom/perm/kate/api/Audio;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 943
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 950
    :goto_0
    return-object v1

    .line 945
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 947
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    invoke-static {v1}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 948
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    goto :goto_0

    .line 945
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 950
    goto :goto_0
.end method

.method getNext()Lcom/perm/kate/api/Audio;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 927
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 938
    :goto_0
    return-object v2

    .line 929
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 930
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    .line 932
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_2
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 933
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 934
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    goto :goto_0

    .line 932
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 935
    goto :goto_0

    .line 929
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 938
    goto :goto_0
.end method

.method getPrevious()Lcom/perm/kate/api/Audio;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 954
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 965
    :goto_0
    return-object v2

    .line 956
    :cond_1
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 957
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v4, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    .line 959
    add-int/lit8 v1, v0, -0x1

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_3

    .line 960
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 961
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    goto :goto_0

    .line 959
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 962
    goto :goto_0

    .line 956
    .end local v1    # "j":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move-object v2, v3

    .line 965
    goto :goto_0
.end method

.method giveUpAudioFocus()V
    .locals 3

    .prologue
    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    invoke-interface {v1}, Lcom/perm/kate/music/AudioFocusHelperInterface;->abandonFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1078
    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1079
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1080
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMediaButtonEventReceiver()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1085
    :cond_1
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1083
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 751
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v1, "Kate.PlaybackService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 73
    new-instance v1, Lcom/perm/kate/Player;

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-direct {v1, v2}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    sput-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    .line 75
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 76
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    invoke-direct {v1, p0, v3}, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;-><init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    .line 77
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 78
    new-instance v1, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-direct {v1, p0, v3}, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;-><init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    .line 79
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->registerMyNoisyAudioStreamReceiver()V

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 83
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 84
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/perm/kate/music/MusicIntentReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    .line 88
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->createAudioFocusHelperWithReflection()V

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_1
    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 883
    const-string v1, "Kate.PlaybackService"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 885
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1}, Lcom/perm/kate/Player;->destroy()V

    .line 888
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/perm/kate/PlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 889
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 890
    iput-object v3, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    .line 891
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMyNoisyAudioStreamReceiver()V

    .line 892
    iput-object v3, p0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 893
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 894
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMediaButtonEventReceiver()V

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    .line 898
    iput-object v3, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    .line 900
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    invoke-static {v1, v2}, Lcom/perm/kate/RemoteControlHelper;->unregisterRemoteControlClient(Landroid/media/AudioManager;Lcom/perm/kate/RemoteControlClientCompat;)V

    .line 901
    iput-object v3, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Lcom/perm/kate/RemoteControlClientCompat;

    .line 903
    iput-object v3, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 905
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 906
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PlaybackService;->handleStart(Landroid/content/Intent;I)V

    .line 172
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1, p3}, Lcom/perm/kate/PlaybackService;->handleStart(Landroid/content/Intent;I)V

    .line 177
    const/4 v0, 0x2

    return v0
.end method

.method protected stopServiceDelayed()V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 910
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 911
    return-void
.end method

.method tryToGetAudioFocus()V
    .locals 3

    .prologue
    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    sget-object v2, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    invoke-interface {v1}, Lcom/perm/kate/music/AudioFocusHelperInterface;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1066
    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1067
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 1068
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->registerMediaButtonEventReceiver()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :cond_1
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1071
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
