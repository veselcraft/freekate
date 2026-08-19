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

    .line 235
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 256
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 257
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 258
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$1200(Lcom/perm/kate/NewCommentActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 238
    check-cast p1, Ljava/lang/Boolean;

    .line 239
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    new-instance v0, Lcom/perm/kate/NewCommentActivity$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$3$1;-><init>(Lcom/perm/kate/NewCommentActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 251
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$1200(Lcom/perm/kate/NewCommentActivity;Z)V

    :goto_0
    return-void
.end method
