.class Lcom/perm/kate/VideoFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 162
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 163
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 164
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/VideoFragment;->access$402(Lcom/perm/kate/VideoFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 138
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-wide v1, v0, Lcom/perm/kate/VideoFragment;->offset:J

    iget-object v3, v0, Lcom/perm/kate/VideoFragment;->page_size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 139
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    .line 140
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 141
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 142
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v5, p1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V

    const-string p1, "vf_DeleteAndCreateVideos"

    .line 143
    invoke-static {v8, v9, p1}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 147
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$3;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/perm/kate/VideoFragment$3$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoFragment$3$1;-><init>(Lcom/perm/kate/VideoFragment$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
