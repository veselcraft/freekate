.class Lcom/perm/kate/VideoFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "VideoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 354
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/VideoFragment;->access$402(Lcom/perm/kate/VideoFragment;I)I

    .line 355
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 322
    check-cast p1, Ljava/util/ArrayList;

    .line 323
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-wide v1, v0, Lcom/perm/kate/VideoFragment;->offset:J

    iget-object v3, v0, Lcom/perm/kate/VideoFragment;->page_size_load_more:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 325
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 326
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideos(Ljava/util/ArrayList;)V

    .line 327
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v3}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createVideosInAlbum(JJLjava/util/ArrayList;)V

    const-string v0, "vf_createVideos"

    .line 328
    invoke-static {v8, v9, v0}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadmore CreateVideos duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.VideoFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$402(Lcom/perm/kate/VideoFragment;I)I

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/VideoFragment;->access$402(Lcom/perm/kate/VideoFragment;I)I

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Lcom/perm/kate/VideoFragment$9$1;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/VideoFragment$9$1;-><init>(Lcom/perm/kate/VideoFragment$9;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
