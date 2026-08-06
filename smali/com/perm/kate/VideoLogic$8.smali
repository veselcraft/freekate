.class final Lcom/perm/kate/VideoLogic$8;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->fetchAndShowInstructions(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V
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
    .line 484
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 500
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 501
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 488
    iget-object v3, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v3, v4}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    move-object v2, p1

    .line 489
    check-cast v2, Ljava/util/ArrayList;

    .line 490
    .local v2, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 493
    .local v0, "v":Lcom/perm/kate/api/Video;
    invoke-static {v0}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "video_url":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/VideoLogic$8;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v3, v1}, Lcom/perm/kate/VideoLogic;->access$600(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
