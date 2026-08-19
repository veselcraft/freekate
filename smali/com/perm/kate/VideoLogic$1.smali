.class Lcom/perm/kate/VideoLogic$1;
.super Lcom/perm/kate/session/Callback;
.source "VideoLogic.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$display_quality_menu:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;Z)V
    .locals 0

    .line 61
    iput-object p2, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-boolean p3, p0, Lcom/perm/kate/VideoLogic$1;->val$display_quality_menu:Z

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 66
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 70
    iget-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/VideoLogic;->access$000(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/VideoLogic;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Video;->hls:Ljava/lang/String;

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/perm/kate/VideoLogic$1;->val$display_quality_menu:Z

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/VideoLogic;->access$200(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {p1}, Lcom/perm/kate/VideoLogic;->access$300(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "vkuservideo"

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "userapi.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 78
    :cond_4
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 79
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/VideoLogic;->access$400(Lcom/perm/kate/api/Video;Landroid/app/Activity;)V

    goto :goto_0

    .line 81
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/VideoLogic$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/VideoLogic;->access$500(Lcom/perm/kate/api/Video;Landroid/app/Activity;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
