.class Lcom/perm/kate/VideoLogic$8;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 590
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 606
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 595
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 596
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 599
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->access$300(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p1

    .line 600
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/VideoLogic;->access$800(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
