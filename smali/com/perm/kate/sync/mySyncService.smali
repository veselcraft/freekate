.class public Lcom/perm/kate/sync/mySyncService;
.super Landroid/app/Service;
.source "mySyncService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 25
    sget-object p1, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    invoke-virtual {p1}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 19
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 20
    sget-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/perm/kate/sync/SyncAdapterImpl;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/sync/SyncAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/perm/kate/sync/mySyncService;->mSyncAdapter:Lcom/perm/kate/sync/SyncAdapterImpl;

    :cond_0
    return-void
.end method
