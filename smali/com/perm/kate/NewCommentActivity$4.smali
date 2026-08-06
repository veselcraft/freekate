.class Lcom/perm/kate/NewCommentActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "NewCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewCommentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewCommentActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 273
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 274
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$1100(Lcom/perm/kate/NewCommentActivity;Z)V

    .line 275
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 253
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 255
    .local v0, "status_res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    new-instance v3, Lcom/perm/kate/NewCommentActivity$4$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewCommentActivity$4$1;-><init>(Lcom/perm/kate/NewCommentActivity$4;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/NewCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 267
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v2, v4}, Lcom/perm/kate/NewCommentActivity;->access$1100(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0
.end method
