.class public Lcom/perm/kate/sync/mySyncService;
.super Landroid/app/Service;
.source "mySyncService.java"


# static fields
.field private static mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 23
    sget-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    invoke-virtual {v0}, Lcom/perm/kate/sync/SyncAdapterImpl;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 18
    sget-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/perm/kate/sync/SyncAdapterImpl;

    invoke-virtual {p0}, Lcom/perm/kate/sync/mySyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/sync/SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    .line 20
    :cond_0
    return-void
.end method
