.class final Lcom/perm/kate/VideoLogic$1;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$display_quality_menu:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Z)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-boolean p3, p0, Lcom/perm/kate/VideoLogic$1;->val$display_quality_menu:Z

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 70
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    move-object v1, p1

    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .local v1, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 61
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-boolean v2, p0, Lcom/perm/kate/VideoLogic$1;->val$display_quality_menu:Z

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v2}, Lcom/perm/kate/VideoLogic;->access$000(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/perm/kate/VideoLogic;->access$100(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
