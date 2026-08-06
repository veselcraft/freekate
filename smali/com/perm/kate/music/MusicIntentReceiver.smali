.class public Lcom/perm/kate/music/MusicIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicIntentReceiver.java"


# static fields
.field static handler:Landroid/os/Handler;

.field static n_click:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/music/MusicIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->playPauseIntent(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/music/MusicIntentReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->nextIntent(Landroid/content/Context;)V

    return-void
.end method

.method static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    .line 21
    :cond_0
    sget-object v0, Lcom/perm/kate/music/MusicIntentReceiver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private nextIntent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "next"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 111
    return-void
.end method

.method private playPauseIntent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v1, v1, Lcom/perm/kate/Player;->state:I

    if-nez v1, :cond_0

    .line 101
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    return-void

    .line 103
    :cond_0
    const-string v1, "resume"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private previousIntent(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "previous"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 29
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    const-string v4, "xxx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_MEDIA_BUTTON "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    return-void

    .line 32
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 34
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 36
    sget v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    .line 37
    sget v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    sget v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 39
    :cond_2
    new-instance v2, Lcom/perm/kate/music/MusicIntentReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver$1;-><init>(Lcom/perm/kate/music/MusicIntentReceiver;Landroid/content/Context;)V

    .line 51
    .local v2, "r":Ljava/lang/Runnable;
    invoke-static {}, Lcom/perm/kate/music/MusicIntentReceiver;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_3
    sget v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->previousIntent(Landroid/content/Context;)V

    .line 55
    const/4 v4, 0x0

    sput v4, Lcom/perm/kate/music/MusicIntentReceiver;->n_click:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :catch_0
    move-exception v3

    .line 93
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v3    # "th":Ljava/lang/Throwable;
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :sswitch_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->playPauseIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "resume"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 71
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v4, "pause"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 77
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .restart local v0    # "i":Landroid/content/Intent;
    const-string v4, "pause"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 83
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->nextIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 87
    :sswitch_6
    invoke-direct {p0, p1}, Lcom/perm/kate/music/MusicIntentReceiver;->previousIntent(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_1
        0x56 -> :sswitch_4
        0x57 -> :sswitch_5
        0x58 -> :sswitch_6
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method
