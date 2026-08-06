.class Lcom/perm/kate/sync/SyncAdapterImpl;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapterImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 21
    iput-object p1, p0, Lcom/perm/kate/sync/SyncAdapterImpl;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "provider"    # Landroid/content/ContentProviderClient;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/sync/SyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 28
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v3, "user_id"

    invoke-virtual {v1, p1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "account_user_id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 30
    const-string v3, "Kate.SyncAdapterImpl"

    const-string v4, "No user_id in account data"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "account_user_id":Ljava/lang/String;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0    # "account_user_id":Ljava/lang/String;
    .restart local v1    # "am":Landroid/accounts/AccountManager;
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/sync/SyncAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/perm/kate/sync/SyncLogic;->sync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    .end local v0    # "account_user_id":Ljava/lang/String;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    invoke-static {v2}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
