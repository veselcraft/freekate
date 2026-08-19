.class public Lcom/perm/kate/sync/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# instance fields
.field mOperations:Ljava/util/ArrayList;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/perm/kate/sync/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->size()I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 5

    const-string v0, "storing contact data failed"

    const-string v1, "BatchOperation"

    .line 57
    iget-object v2, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/sync/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    iget-object v4, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 66
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 64
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public size()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
