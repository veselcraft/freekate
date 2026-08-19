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

    .line 262
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 295
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 296
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 297
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$1200(Lcom/perm/kate/NewCommentActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    instance-of v1, p1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 267
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 269
    :cond_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 272
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    new-instance v1, Lcom/perm/kate/NewCommentActivity$4$1;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/NewCommentActivity$4$1;-><init>(Lcom/perm/kate/NewCommentActivity$4;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 290
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/NewCommentActivity;->access$1200(Lcom/perm/kate/NewCommentActivity;Z)V

    :goto_1
    return-void
.end method
