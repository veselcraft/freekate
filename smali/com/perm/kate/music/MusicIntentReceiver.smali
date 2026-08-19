.class public Lcom/perm/kate/music/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicIntentReceiver.java"


# static fields
.field static handler:Landroid/os/Handler;

.field static n_click:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->playPauseIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->nextIntent(Landroid/content/Context;)V

    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    .line 22
    :cond_0
    sget-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private nextIntent(Landroid/content/Context;)V
    .locals 2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "next"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/music/MusicIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private playPauseIntent(Landroid/content/Context;)V
    .locals 2

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/perm/kate/Player;->state:I

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/perm/kate/PlaybackService;->pauseStatic()V

    goto :goto_0

    :cond_0
    const-string v1, "resume"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/music/MusicIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private previousIntent(Landroid/content/Context;)V
    .locals 2

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "previous"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 28
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    const-string v0, "xxx"

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MEDIA_BUTTON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_3

    const/16 p2, 0x7e

    if-eq v0, p2, :cond_2

    const/16 p2, 0x7f

    if-eq v0, p2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->previousIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->nextIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {}, Lcom/perm/kate/PlaybackService;->pauseStatic()V

    goto :goto_0

    .line 62
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->playPauseIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {}, Lcom/perm/kate/PlaybackService;->pauseStatic()V

    goto :goto_0

    .line 66
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/perm/kate/PlaybackService;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "resume"

    .line 67
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/music/MusicIntentReceiver;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_6

    .line 37
    sget p2, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    sput p2, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 40
    :cond_4
    new-instance p2, Lcom/perm/kate/music/MusicIntentReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver$1;-><init>(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/perm/kate/music/MusicIntentReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    :cond_5
    sget p2, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->previousIntent(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 56
    sput p1, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
