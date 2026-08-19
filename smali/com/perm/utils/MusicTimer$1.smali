.class Lcom/perm/utils/MusicTimer$1;
.super Ljava/lang/Object;
.source "MusicTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 34
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v0, 0x0

    .line 43
    invoke-static {v0, v1}, Lcom/perm/utils/MusicTimer;->access$002(J)J

    return-void
.end method
