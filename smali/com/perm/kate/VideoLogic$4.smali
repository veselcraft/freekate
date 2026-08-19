.class Lcom/perm/kate/VideoLogic$4;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 155
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 180
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 160
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 166
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 167
    iget-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/VideoLogic;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/VideoLogic;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    new-instance v1, Lcom/perm/kate/VideoLogic$4$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/VideoLogic$4$1;-><init>(Lcom/perm/kate/VideoLogic$4;Lcom/perm/kate/api/Video;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
