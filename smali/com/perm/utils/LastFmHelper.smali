.class public abstract Lcom/perm/utils/LastFmHelper;
.super Ljava/lang/Object;
.source "LastFmHelper.java"


# static fields
.field private static BROADCAST_ACTION:Ljava/lang/String; = "com.adam.aslfms.notify.playstatechanged"

.field public static STATE_COMPLETE:I = 0x3

.field public static STATE_PAUSE:I = 0x2

.field public static STATE_RESUME:I = 0x1

.field public static STATE_START:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static sendBroadcast(ILcom/perm/kate/api/Audio;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/perm/utils/LastFmHelper;->BROADCAST_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "state"

    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "app-name"

    .line 26
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f004c

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "app-package"

    .line 27
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "artist"

    .line 28
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "track"

    .line 29
    iget-object v1, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "duration"

    .line 30
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    sget-object p0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p0, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static sendBroadcastComplete(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 51
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_COMPLETE:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    return-void
.end method

.method public static sendBroadcastPause(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 43
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_PAUSE:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    return-void
.end method

.method public static sendBroadcastResume(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 47
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_RESUME:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    return-void
.end method

.method public static sendBroadcastStart(Lcom/perm/kate/api/Audio;)V
    .locals 1

    .line 39
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_START:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    return-void
.end method
