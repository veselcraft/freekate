.class public Lcom/perm/kate/sync/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "BatchOperation"

    iput-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->TAG:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/perm/kate/sync/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    .line 44
    return-void
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)V
    .locals 2
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/sync/BatchOperation;->execute()V

    .line 54
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 57
    iget-object v2, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/sync/BatchOperation;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    iget-object v4, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e1":Landroid/content/OperationApplicationException;
    const-string v2, "BatchOperation"

    const-string v3, "storing contact data failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65
    .end local v0    # "e1":Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "BatchOperation"

    const-string v3, "storing contact data failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/sync/BatchOperation;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
