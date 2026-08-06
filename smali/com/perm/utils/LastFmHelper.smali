.class public Lcom/perm/utils/LastFmHelper;
.super Ljava/lang/Object;
.source "LastFmHelper.java"


# static fields
.field private static BROADCAST_ACTION:Ljava/lang/String;

.field public static STATE_COMPLETE:I

.field public static STATE_PAUSE:I

.field public static STATE_RESUME:I

.field public static STATE_START:I

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "Kate.LastFmHelper"

    sput-object v0, Lcom/perm/utils/LastFmHelper;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "com.adam.aslfms.notify.playstatechanged"

    sput-object v0, Lcom/perm/utils/LastFmHelper;->BROADCAST_ACTION:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/perm/utils/LastFmHelper;->STATE_START:I

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/perm/utils/LastFmHelper;->STATE_RESUME:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/perm/utils/LastFmHelper;->STATE_PAUSE:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/perm/utils/LastFmHelper;->STATE_COMPLETE:I

    return-void
.end method

.method private static sendBroadcast(ILcom/perm/kate/api/Audio;)V
    .locals 6
    .param p0, "state"    # I
    .param p1, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 24
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/perm/utils/LastFmHelper;->BROADCAST_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "bCast":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    const-string v2, "app-name"

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v4, 0x7f070527

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v2, "app-package"

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v2, "artist"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v2, "track"

    iget-object v3, p1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v2, "duration"

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->duration:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 31
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    .end local v0    # "bCast":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendBroadcastComplete(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p0, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 51
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_COMPLETE:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    .line 52
    return-void
.end method

.method public static sendBroadcastPause(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p0, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 43
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_PAUSE:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    .line 44
    return-void
.end method

.method public static sendBroadcastResume(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p0, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 47
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_RESUME:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    .line 48
    return-void
.end method

.method public static sendBroadcastStart(Lcom/perm/kate/api/Audio;)V
    .locals 1
    .param p0, "a"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 39
    sget v0, Lcom/perm/utils/LastFmHelper;->STATE_START:I

    invoke-static {v0, p0}, Lcom/perm/utils/LastFmHelper;->sendBroadcast(ILcom/perm/kate/api/Audio;)V

    .line 40
    return-void
.end method
