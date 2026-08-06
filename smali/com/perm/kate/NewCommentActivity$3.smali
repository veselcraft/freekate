.class Lcom/perm/kate/NewCommentActivity$3;
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
    .line 223
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 245
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 246
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$1100(Lcom/perm/kate/NewCommentActivity;Z)V

    .line 247
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 226
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 227
    .local v0, "status_res":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    new-instance v2, Lcom/perm/kate/NewCommentActivity$3$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/NewCommentActivity$3$1;-><init>(Lcom/perm/kate/NewCommentActivity$3;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v1, v2}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 239
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {v1, v2}, Lcom/perm/kate/NewCommentActivity;->access$1100(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0
.end method
