.class public Lcom/perm/kate/PlaybackService;
.super Landroid/app/Service;
.source "PlaybackService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;,
        Lcom/perm/kate/PlaybackService$TestPhoneStateListener;,
        Lcom/perm/kate/PlaybackService$AudioFocus;
    }
.end annotation


# static fields
.field static CHANNEL_ID:Ljava/lang/String; = "playback_channel_id"

.field static ad_playing:Z = false

.field static audios:Ljava/util/ArrayList; = null

.field private static callbacks:Ljava/util/ArrayList; = null

.field public static episode:Lcom/perm/kate/api/Audio; = null

.field static is_shuffle:Z = false

.field private static playback_start:J

.field public static player:Lcom/perm/kate/Player;

.field static position:I

.field private static primary_audios:Ljava/util/ArrayList;

.field public static service:Ljava/lang/ref/WeakReference;

.field static source:I


# instance fields
.field adPlayerListener:Lcom/my/target/instreamads/InstreamAudioAdPlayer$AdPlayerListener;

.field delayedStopRunnable:Ljava/lang/Runnable;

.field mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

.field mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mMediaButtonReceiverComponent:Landroid/content/ComponentName;

.field private mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

.field musicFocusable:Lcom/perm/kate/music/MusicFocusable;

.field myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

.field notification_builder:Landroidx/core/app/NotificationCompat$Builder;

.field private pause_if_call:Z

.field phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field private final startAudioSomewhereBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 143
    sput v0, Lcom/perm/kate/PlaybackService;->position:I

    .line 188
    sput-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    const-wide/16 v1, 0x0

    .line 533
    sput-wide v1, Lcom/perm/kate/PlaybackService;->playback_start:J

    .line 551
    sput v0, Lcom/perm/kate/PlaybackService;->source:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    .line 72
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 894
    new-instance v0, Lcom/perm/kate/PlaybackService$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$3;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 1022
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1023
    new-instance v0, Lcom/perm/kate/PlaybackService$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$4;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    .line 1194
    new-instance v0, Lcom/perm/kate/PlaybackService$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$5;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->musicFocusable:Lcom/perm/kate/music/MusicFocusable;

    .line 1256
    new-instance v0, Lcom/perm/kate/PlaybackService$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PlaybackService$6;-><init>(Lcom/perm/kate/PlaybackService;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->startAudioSomewhereBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private RegisterNotificationChannel()V
    .locals 5

    .line 820
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    .line 821
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7f0f04eb

    .line 822
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 823
    new-instance v2, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/perm/kate/PlaybackService;->CHANNEL_ID:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 824
    invoke-virtual {v2, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 825
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->notifyStateChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PlaybackService;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    return p0
.end method

.method static synthetic access$202(Lcom/perm/kate/PlaybackService;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    return p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pauseForCall()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PlaybackService;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->trackAudioAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PlaybackService;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .line 53
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->repeat()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->cancelNotification()V

    return-void
.end method

.method public static addCallback(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 2

    .line 158
    invoke-static {}, Lcom/perm/kate/PlaybackService;->removeEmptyReferences()V

    .line 159
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cancelNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 831
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method static changeShuffleState()V
    .locals 3

    .line 1216
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1218
    :cond_0
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    if-eqz v1, :cond_1

    .line 1219
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1222
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1223
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1224
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1227
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1228
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static deleteFromQueue(Lcom/perm/kate/api/Audio;)V
    .locals 2

    .line 1246
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1248
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1251
    sget-object p0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 1252
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1253
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v0}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private displayNotification(Z)V
    .locals 16

    move-object/from16 v1, p0

    .line 737
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x14000000

    .line 738
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.audioanywhere.from_notification"

    const/4 v3, 0x1

    .line 739
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 744
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/PlaybackService;

    invoke-direct {v2, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 745
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-eqz v4, :cond_0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    const-string v6, "pause"

    .line 750
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 752
    :cond_2
    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v6, :cond_3

    const-string v6, "resume"

    .line 753
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    const-string v6, "play"

    .line 755
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    :goto_1
    invoke-static {v1, v3, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 759
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/perm/kate/PlaybackService;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "previous"

    .line 760
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-static {v1, v3, v6, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 763
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/perm/kate/PlaybackService;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "next"

    .line 764
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    invoke-static {v1, v3, v7, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 767
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/perm/kate/PlaybackService;

    invoke-direct {v8, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "hide_notification"

    .line 768
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    invoke-static {v1, v3, v8, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 772
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0c0034

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 775
    sget-object v10, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v10, :cond_4

    const v11, 0x7f09024d

    .line 776
    iget-object v10, v10, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v10, 0x7f090251

    .line 777
    sget-object v11, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v11, v11, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 779
    :cond_4
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    const v12, 0x7f0900c2

    const v13, 0x7f09024e

    const v14, 0x7f090250

    const v15, 0x7f09024f

    if-ge v10, v11, :cond_6

    if-eqz v4, :cond_5

    const v4, 0x7f080227

    goto :goto_2

    :cond_5
    const v4, 0x7f08022c

    .line 780
    :goto_2
    invoke-virtual {v9, v15, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    const v4, 0x7f080228

    goto :goto_3

    :cond_7
    const v4, 0x7f08022d

    .line 782
    :goto_3
    invoke-virtual {v9, v15, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v4, 0x7f080232

    .line 783
    invoke-virtual {v9, v14, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v4, 0x7f080223

    .line 784
    invoke-virtual {v9, v13, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v4, 0x7f08008d

    .line 785
    invoke-virtual {v9, v12, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 788
    :goto_4
    invoke-virtual {v9, v14, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 789
    invoke-virtual {v9, v15, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 790
    invoke-virtual {v9, v13, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 791
    invoke-virtual {v9, v12, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 794
    iget-object v2, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v2, :cond_8

    .line 795
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcom/perm/kate/PlaybackService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v2, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 797
    :cond_8
    iget-object v2, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    const v4, 0x7f080213

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 799
    iget-object v2, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {v1, v3, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 800
    iget-object v0, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 801
    iget-object v0, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "service"

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 803
    iget-object v0, v1, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 805
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PlaybackService;->RegisterNotificationChannel()V

    if-eqz p1, :cond_9

    const/16 v2, 0xa

    .line 808
    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    const-string v0, "Kate.PlaybackService"

    const-string v2, "start foreground state"

    .line 809
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 811
    :cond_9
    invoke-direct {v1, v0}, Lcom/perm/kate/PlaybackService;->simpleDisplayNotification(Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 813
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 814
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method static exoEnabled()Z
    .locals 3

    .line 1288
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "exo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 629
    iget-object p1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static getSourceForAd()Ljava/lang/String;
    .locals 1

    .line 379
    sget v0, Lcom/perm/kate/PlaybackService;->source:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "other"

    return-object v0

    :pswitch_1
    const-string v0, "recs"

    return-object v0

    :pswitch_2
    const-string v0, "group_status"

    return-object v0

    :pswitch_3
    const-string v0, "user_status"

    return-object v0

    :pswitch_4
    const-string v0, "im"

    return-object v0

    :pswitch_5
    const-string v0, "global_search"

    return-object v0

    :pswitch_6
    const-string v0, "group_list"

    return-object v0

    :pswitch_7
    const-string v0, "my"

    return-object v0

    :pswitch_8
    const-string v0, "user_list"

    return-object v0

    :pswitch_9
    const-string v0, "feed"

    return-object v0

    :pswitch_a
    const-string v0, "group_wall"

    return-object v0

    :pswitch_b
    const-string v0, "user_wall"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSourceForAudio()Ljava/lang/String;
    .locals 1

    .line 578
    sget v0, Lcom/perm/kate/PlaybackService;->source:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "audios_user"

    return-object v0

    :pswitch_1
    const-string v0, "status"

    return-object v0

    :pswitch_2
    const-string v0, "messages"

    return-object v0

    :pswitch_3
    const-string v0, "comments"

    return-object v0

    :pswitch_4
    const-string v0, "search"

    return-object v0

    :pswitch_5
    const-string v0, "audios_group"

    return-object v0

    :pswitch_6
    const-string v0, "news"

    return-object v0

    :pswitch_7
    const-string v0, "wall_group"

    return-object v0

    :pswitch_8
    const-string v0, "wall_user"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleStart(Landroid/content/Intent;I)V
    .locals 8

    :try_start_0
    const-string v0, "Kate.PlaybackService"

    const-string v1, "handleStart"

    .line 414
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_15

    .line 417
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 419
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 420
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "play"

    .line 421
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 423
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v3, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    .line 425
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 426
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void

    .line 429
    :cond_3
    sput v2, Lcom/perm/kate/PlaybackService;->position:I

    .line 431
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_4

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_5

    if-nez v0, :cond_5

    .line 432
    invoke-static {}, Lcom/perm/utils/AudioAdCounter;->shouldPlayAd()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 433
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->initAd()V

    goto :goto_2

    .line 435
    :cond_5
    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v3, :cond_6

    .line 436
    invoke-direct {p0, v3}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    goto :goto_2

    .line 438
    :cond_6
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()Z

    :cond_7
    :goto_2
    const-string v3, "pause"

    .line 441
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 442
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    :cond_8
    const-string v3, "next"

    .line 443
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1a

    if-eqz v3, :cond_d

    .line 449
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_9

    .line 450
    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 451
    :cond_9
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v3, :cond_a

    return-void

    .line 454
    :cond_a
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    if-nez v0, :cond_c

    .line 455
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v3

    if-nez v3, :cond_c

    .line 456
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    .line 457
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_b

    .line 458
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    .line 459
    :cond_b
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    return-void

    .line 462
    :cond_c
    invoke-static {v4}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 463
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playNext()Z

    move-result v3

    if-nez v3, :cond_d

    .line 466
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    :cond_d
    const-string v3, "previous"

    .line 469
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 470
    sget-boolean v3, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v3, :cond_e

    return-void

    .line 472
    :cond_e
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    if-nez v0, :cond_10

    .line 473
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v3

    if-nez v3, :cond_10

    .line 474
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    .line 475
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_f

    .line 476
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    :cond_f
    return-void

    .line 479
    :cond_10
    invoke-static {v4}, Lcom/perm/kate/PlaybackService;->trackAudioPlay(Ljava/lang/Long;)V

    .line 480
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->playPrevious()V

    :cond_11
    const-string v3, "resume"

    .line 482
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 488
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_12

    .line 489
    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    :cond_12
    if-nez v0, :cond_13

    .line 490
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 491
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    .line 493
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    return-void

    .line 496
    :cond_13
    invoke-direct {p0, p2}, Lcom/perm/kate/PlaybackService;->resume(I)V

    :cond_14
    const-string p2, "hide_notification"

    .line 497
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 498
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->cancelNotification()V

    .line 499
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    .line 500
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {p1}, Lcom/perm/kate/Player;->pause()V

    .line 501
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    .line 502
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastPause(Lcom/perm/kate/api/Audio;)V

    .line 503
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 504
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    .line 505
    sput-boolean v2, Lcom/perm/kate/PlaybackService;->is_shuffle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_15
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_16
    :goto_4
    return-void
.end method

.method private initAd()V
    .locals 5

    .line 195
    new-instance v0, Lcom/my/target/instreamads/InstreamAudioAd;

    const v1, 0x10ede

    invoke-direct {v0, v1, p0}, Lcom/my/target/instreamads/InstreamAudioAd;-><init>(ILandroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    const-string v2, "puid1"

    const-string v3, "596"

    invoke-virtual {v1, v2, v3}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    const-string v2, "puid2"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    const-string v2, "puid3"

    invoke-virtual {v1, v2, v3}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content_id"

    invoke-virtual {v1, v3, v2}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/my/target/common/CustomParams;->setVKId(Ljava/lang/String;)V

    .line 205
    :cond_1
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_2
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/perm/kate/api/Audio;->track_genre_id:I

    if-eqz v1, :cond_3

    .line 209
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v1

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget v2, v2, Lcom/perm/kate/api/Audio;->track_genre_id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "puid22"

    invoke-virtual {v1, v3, v2}, Lcom/my/target/common/CustomParams;->setCustomParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_3
    invoke-static {}, Lcom/perm/kate/BaseActivity;->getTargetingParams()Lcom/perm/kate/BaseActivity$TargetingParams;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 213
    iget-object v2, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/common/CustomParams;->setAge(I)V

    .line 215
    :cond_4
    iget-object v2, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 216
    invoke-virtual {v0}, Lcom/my/target/common/BaseAd;->getCustomParams()Lcom/my/target/common/CustomParams;

    move-result-object v2

    iget-object v1, v1, Lcom/perm/kate/BaseActivity$TargetingParams;->gender:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-virtual {v2, v3}, Lcom/my/target/common/CustomParams;->setGender(I)V

    .line 220
    :cond_6
    new-instance v1, Lcom/perm/kate/PlaybackService$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/PlaybackService$1;-><init>(Lcom/perm/kate/PlaybackService;)V

    invoke-virtual {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd;->setPlayer(Lcom/my/target/instreamads/InstreamAudioAdPlayer;)V

    .line 282
    new-instance v1, Lcom/perm/kate/PlaybackService$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/PlaybackService$2;-><init>(Lcom/perm/kate/PlaybackService;)V

    invoke-virtual {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd;->setListener(Lcom/my/target/instreamads/InstreamAudioAd$InstreamAudioAdListener;)V

    const/4 v1, 0x5

    .line 365
    invoke-virtual {v0, v1}, Lcom/my/target/instreamads/InstreamAudioAd;->setLoadingTimeout(I)V

    .line 366
    invoke-virtual {v0}, Lcom/my/target/instreamads/InstreamAudioAd;->load()V

    const-string v0, "requested"

    .line 368
    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->trackAudioAd(Ljava/lang/String;)V

    return-void
.end method

.method private initRemoteControlClient()V
    .locals 3

    .line 1154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1156
    new-instance v1, Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    .line 1157
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    .line 1159
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v0, v1}, Lcom/perm/kate/RemoteControlHelper;->registerRemoteControlClient(Landroid/media/AudioManager;Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method private notifyStateChanged()V
    .locals 3

    .line 1115
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1116
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1117
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onStateChanged()V

    goto :goto_0

    .line 1118
    :cond_1
    invoke-static {p0}, Lcom/perm/kate/KateWidgetAudio;->updateAll(Landroid/content/Context;)V

    return-void
.end method

.method private pause()V
    .locals 3

    .line 714
    :try_start_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->pause()V

    .line 715
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStop()V

    .line 716
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/LastFmHelper;->sendBroadcastPause(Lcom/perm/kate/api/Audio;)V

    .line 718
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->stopForegroundWithNotification()V

    .line 720
    iget-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    if-nez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    .line 722
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    .line 724
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 725
    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 726
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPauseStateRemoteControlClient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v2, v2, Lcom/perm/kate/Player;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private pauseForCall()V
    .locals 1

    .line 134
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/perm/kate/PlaybackService;->pause_if_call:Z

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->pause()V

    :cond_0
    return-void
.end method

.method public static pauseStatic()V
    .locals 1

    .line 707
    sget-object v0, Lcom/perm/kate/PlaybackService;->service:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 709
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->service:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0}, Lcom/perm/kate/PlaybackService;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method private play(Lcom/perm/kate/api/Audio;)V
    .locals 3

    .line 515
    invoke-direct {p0, p1}, Lcom/perm/kate/PlaybackService;->getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 519
    sput v1, Lcom/perm/kate/PlaybackService;->position:I

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/perm/kate/PlaybackService;->playback_start:J

    .line 521
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 522
    invoke-static {p1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastStart(Lcom/perm/kate/api/Audio;)V

    .line 523
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    const/4 v0, 0x1

    .line 524
    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 525
    invoke-static {p1}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 526
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 527
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->updateRemoteControlClientData()V

    .line 528
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result p1

    if-nez p1, :cond_1

    .line 529
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioQueue;->sendStartEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static playNext(Lcom/perm/kate/api/Audio;)V
    .locals 6

    .line 1233
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1236
    :goto_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1237
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v3, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 1238
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private playNext()Z
    .locals 5

    .line 843
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getNext()Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v3, 0x2

    .line 849
    invoke-static {p0}, Lcom/perm/kate/PlayerActivity;->getRepeat(Landroid/content/Context;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 850
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getFirst()Lcom/perm/kate/api/Audio;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    .line 856
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    .line 858
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->stopForegroundWithNotification()V

    .line 859
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->stopServiceDelayed()V

    :cond_2
    return v1

    .line 864
    :cond_3
    sput-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 866
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 867
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 868
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onNextEpisode()V

    goto :goto_0

    .line 869
    :cond_5
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    const/4 v0, 0x1

    return v0
.end method

.method private playPrevious()V
    .locals 3

    .line 879
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->getPrevious()Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 886
    :cond_0
    sput-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 888
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 889
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 890
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1}, Lcom/perm/kate/Player$PlayerCallback;->onNextEpisode()V

    goto :goto_0

    .line 891
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->play(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method private registerMediaButtonEventReceiver()V
    .locals 2

    .line 1128
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method private registerMyNoisyAudioStreamReceiver()V
    .locals 2

    .line 1094
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1095
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "Kate.PlaybackService"

    const-string v1, "register myNoisyAudioStreamReceiver"

    .line 1096
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1098
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1099
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V
    .locals 3

    .line 163
    invoke-static {}, Lcom/perm/kate/PlaybackService;->removeEmptyReferences()V

    .line 164
    sget-object v0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 166
    sget-object p0, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private static removeEmptyReferences()V
    .locals 2

    const/4 v0, 0x0

    .line 172
    :goto_0
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 173
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 174
    sget-object v1, Lcom/perm/kate/PlaybackService;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private repeat()V
    .locals 1

    .line 608
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->isLimit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/perm/kate/ActivityCounter;->getVisibleCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 611
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->toast()V

    return-void

    .line 614
    :cond_1
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStart()V

    .line 616
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->repeat()V

    .line 617
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/LastFmHelper;->sendBroadcastStart(Lcom/perm/kate/api/Audio;)V

    .line 618
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->saveState()V

    const/4 v0, 0x1

    .line 619
    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 620
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 621
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 622
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->updateRemoteControlClientData()V

    return-void
.end method

.method private static restorePosition(Landroid/content/Context;)V
    .locals 2

    .line 676
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "position"

    const/4 v1, 0x0

    .line 677
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/perm/kate/PlaybackService;->position:I

    .line 678
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restorePosition:position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/perm/kate/PlaybackService;->position:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Kate.PlaybackService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static restoreState(Landroid/content/Context;)V
    .locals 7

    .line 664
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    return-void

    .line 666
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    .line 667
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "audio_owner_id"

    .line 668
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v6, v4, v2

    if-nez v6, :cond_1

    return-void

    .line 671
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    .line 672
    invoke-static {p0}, Lcom/perm/kate/PlaybackService;->restorePosition(Landroid/content/Context;)V

    return-void
.end method

.method private resume(I)V
    .locals 3

    .line 682
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    .line 684
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelf(I)V

    return-void

    .line 687
    :cond_0
    invoke-static {v0}, Lcom/perm/utils/AudioBroadcast;->broadcastInThread(Lcom/perm/kate/api/Audio;)V

    .line 688
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, p1, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 689
    invoke-virtual {p1}, Lcom/perm/kate/Player;->resume()V

    .line 690
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/utils/LastFmHelper;->sendBroadcastResume(Lcom/perm/kate/api/Audio;)V

    .line 692
    :cond_1
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result p1

    if-nez p1, :cond_2

    .line 693
    invoke-static {}, Lcom/perm/utils/BackgroundMusicCounter;->musicStart()V

    .line 694
    :cond_2
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, p1, Lcom/perm/kate/Player;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 695
    :cond_3
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-direct {p0, v0}, Lcom/perm/kate/PlaybackService;->getAudioUri(Lcom/perm/kate/api/Audio;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 696
    :cond_4
    invoke-direct {p0, v1}, Lcom/perm/kate/PlaybackService;->displayNotification(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->tryToGetAudioFocus()V

    .line 698
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPlayStateRemoteControlClient()V

    .line 699
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result p1

    if-nez p1, :cond_5

    .line 700
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0}, Lcom/perm/kate/api/Audio;->getRawId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioQueue;->sendStartEvent(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private saveState()V
    .locals 5

    .line 640
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 643
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 644
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    const-string v3, "audio_owner_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 645
    sget-object v1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->aid:J

    const-string v3, "audio_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    .line 649
    :try_start_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v3, v2, Lcom/perm/kate/Player;->state:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 650
    :cond_1
    invoke-virtual {v2}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 652
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 653
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 655
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saving position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Kate.PlaybackService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "position"

    .line 656
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 657
    sput v1, Lcom/perm/kate/PlaybackService;->position:I

    .line 659
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static setAudios(Ljava/util/ArrayList;)V
    .locals 1

    .line 148
    sput-object p0, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    .line 153
    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/perm/kate/PlaybackService;->primary_audios:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object p0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 p0, 0x0

    .line 154
    sput-boolean p0, Lcom/perm/kate/PlaybackService;->is_shuffle:Z

    return-void
.end method

.method private setPauseStateRemoteControlClient()V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1169
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :cond_0
    return-void
.end method

.method private setPlayStateRemoteControlClient()V
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 1164
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    :cond_0
    return-void
.end method

.method private simpleDisplayNotification(Landroid/app/Notification;)V
    .locals 2

    const-string v0, "notification"

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xa

    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private stopForegroundWithNotification()V
    .locals 1

    const/4 v0, 0x0

    .line 875
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method private trackAudioAd(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 373
    invoke-static {}, Lcom/perm/kate/PlaybackService;->getSourceForAd()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "[{\"e\":\"audio_ad\",\"event\":\"%s\",\"section\":\"%s\"}]"

    .line 372
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-static {p1}, Lcom/perm/utils/VkStatsReporter;->report(Ljava/lang/String;)V

    return-void
.end method

.method static trackAudioPlay(Ljava/lang/Long;)V
    .locals 6

    .line 557
    :try_start_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_0

    return-void

    .line 560
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 563
    invoke-virtual {v0}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :cond_2
    const-string v0, "[{\"e\":\"audio_play\",\"audio_id\":\"%s\",\"source\":\"%s\",\"uuid\":%s,\"duration\":%d,\"start_time\":%d}]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 567
    invoke-static {}, Lcom/perm/kate/PlaybackService;->getSourceForAudio()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const/4 p0, 0x4

    sget-wide v2, Lcom/perm/kate/PlaybackService;->playback_start:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p0

    .line 566
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {p0}, Lcom/perm/utils/VkStatsReporter;->report(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 571
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 572
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private unregisterMediaButtonEventReceiver()V
    .locals 2

    .line 1132
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method private unregisterMyNoisyAudioStreamReceiver()V
    .locals 2

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "Kate.PlaybackService"

    const-string v1, "unregister myNoisyAudioStreamReceiver"

    .line 1106
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1108
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1109
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private updateRemoteControlClientData()V
    .locals 4

    .line 1136
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    if-nez v0, :cond_0

    .line 1137
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->initRemoteControlClient()V

    .line 1138
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->setPlayStateRemoteControlClient()V

    .line 1140
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1145
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 1147
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/4 v1, 0x7

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-object v2, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 1148
    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    const/16 v1, 0x9

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->duration:J

    .line 1149
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 1150
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    :cond_1
    return-void
.end method

.method static useExo()Z
    .locals 2

    .line 1279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 1280
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Mi A3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getFirst()Lcom/perm/kate/api/Audio;
    .locals 3

    .line 1052
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1054
    :goto_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1056
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1057
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method getNext()Lcom/perm/kate/api/Audio;
    .locals 7

    .line 1036
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1038
    :goto_0
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1039
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1041
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1042
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1043
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method getPrevious()Lcom/perm/kate/api/Audio;
    .locals 7

    .line 1063
    sget-object v0, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_0

    goto :goto_2

    .line 1065
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 1066
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 1069
    sget-object v2, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    invoke-static {v2}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1070
    sget-object v1, Lcom/perm/kate/PlaybackService;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method

.method giveUpAudioFocus()V
    .locals 1

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/perm/kate/music/AudioFocusHelperInterface;->abandonFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1187
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMediaButtonEventReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1190
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "Kate.PlaybackService"

    const-string v1, "onCreate"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/perm/kate/PlaybackService;->service:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-static {}, Lcom/perm/kate/PlaybackService;->useExo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/PlaybackService;->exoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perm/kate/PlayerExo;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-direct {v0, v1}, Lcom/perm/kate/PlayerExo;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perm/kate/Player;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-direct {v0, v1}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    :goto_0
    sput-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    const-string v0, "phone"

    .line 85
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 86
    new-instance v1, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/PlaybackService$TestPhoneStateListener;-><init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V

    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    const/16 v3, 0x20

    .line 87
    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 88
    new-instance v0, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;-><init>(Lcom/perm/kate/PlaybackService;Lcom/perm/kate/PlaybackService$1;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->myNoisyAudioStreamReceiver:Lcom/perm/kate/PlaybackService$NoisyAudioStreamReceiver;

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->registerMyNoisyAudioStreamReceiver()V

    const-string v0, "audio"

    .line 92
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/perm/kate/music/MusicIntentReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mMediaButtonReceiverComponent:Landroid/content/ComponentName;

    .line 95
    new-instance v0, Lcom/perm/kate/music/AudioFocusHelper;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->musicFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/music/AudioFocusHelper;-><init>(Landroid/content/Context;Lcom/perm/kate/music/MusicFocusable;)V

    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    .line 101
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioQueue;->start()V

    .line 102
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->startAudioSomewhereBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.start_audio_somewhere"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "Kate.PlaybackService"

    const-string v1, "onDestroy"

    .line 989
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->startAudioSomewhereBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 991
    invoke-static {}, Lcom/perm/kate/KApplication;->getAudioQueue()Lcom/perm/kate/AudioQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/AudioQueue;->stop()V

    .line 993
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 994
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0}, Lcom/perm/kate/Player;->destroy()V

    const-string v0, "phone"

    .line 997
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 998
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    .line 999
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->phoneListener:Lcom/perm/kate/PlaybackService$TestPhoneStateListener;

    .line 1000
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMyNoisyAudioStreamReceiver()V

    .line 1001
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->notification_builder:Landroidx/core/app/NotificationCompat$Builder;

    .line 1002
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->unregisterMediaButtonEventReceiver()V

    .line 1005
    invoke-virtual {p0}, Lcom/perm/kate/PlaybackService;->giveUpAudioFocus()V

    .line 1006
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    .line 1008
    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    invoke-static {v1, v2}, Lcom/perm/kate/RemoteControlHelper;->unregisterRemoteControlClient(Landroid/media/AudioManager;Landroid/media/RemoteControlClient;)V

    .line 1009
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mRemoteControlClientCompat:Landroid/media/RemoteControlClient;

    .line 1011
    iput-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 1012
    sput-object v0, Lcom/perm/kate/PlaybackService;->service:Ljava/lang/ref/WeakReference;

    .line 1014
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 182
    invoke-direct {p0, p1, p3}, Lcom/perm/kate/PlaybackService;->handleStart(Landroid/content/Intent;I)V

    const/4 p1, 0x2

    return p1
.end method

.method protected stopServiceDelayed()V
    .locals 4

    .line 1018
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1019
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/perm/kate/PlaybackService;->delayedStopRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x3a980

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method tryToGetAudioFocus()V
    .locals 2

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PlaybackService;->mAudioFocusHelper:Lcom/perm/kate/music/AudioFocusHelperInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/perm/kate/music/AudioFocusHelperInterface;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iput-object v1, p0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1176
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PlaybackService;->registerMediaButtonEventReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1179
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
