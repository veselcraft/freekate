.class public Lcom/perm/kate/CleanupService;
.super Landroid/app/IntentService;
.source "CleanupService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Kate.CleanupService"

    .line 9
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 19
    :try_start_0
    invoke-static {p0}, Lcom/perm/kate/Helper;->checkCacheSizeSometimes(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
