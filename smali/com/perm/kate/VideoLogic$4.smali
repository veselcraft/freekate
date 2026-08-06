.class final Lcom/perm/kate/VideoLogic$4;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->fetchAndPlayWith(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 160
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 161
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 141
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    move-object v1, p1

    .line 142
    check-cast v1, Ljava/util/ArrayList;

    .line 143
    .local v1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 149
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$4;->val$activity:Lcom/perm/kate/BaseActivity;

    new-instance v3, Lcom/perm/kate/VideoLogic$4$1;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/VideoLogic$4$1;-><init>(Lcom/perm/kate/VideoLogic$4;Lcom/perm/kate/api/Video;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
