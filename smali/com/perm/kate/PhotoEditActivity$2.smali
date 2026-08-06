.class Lcom/perm/kate/PhotoEditActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PhotoEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoEditActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoEditActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotoEditActivity;->showProgressBar(Z)V

    .line 90
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/PhotoEditActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 72
    check-cast v0, Ljava/lang/Integer;

    .line 73
    .local v0, "status_res":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    new-instance v2, Lcom/perm/kate/PhotoEditActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/PhotoEditActivity$2$1;-><init>(Lcom/perm/kate/PhotoEditActivity$2;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/PhotoEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 84
    :cond_1
    return-void
.end method
