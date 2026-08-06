.class Lcom/perm/kate/VideoFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "VideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 349
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    .line 350
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    .line 351
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 318
    move-object v6, p1

    check-cast v6, Ljava/util/ArrayList;

    .line 319
    .local v6, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-wide v2, v0, Lcom/perm/kate/VideoFragment;->offset:J

    iget-object v1, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->page_size_load_more:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/perm/kate/VideoFragment;->offset:J

    .line 321
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 323
    .local v8, "t1":J
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideos(Ljava/util/ArrayList;)V

    .line 324
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0}, Lcom/perm/kate/VideoFragment;->access$300(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->createVideosInAlbum(JJLjava/util/ArrayList;)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 326
    .local v10, "t2":J
    const-string v0, "Kate.VideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadmore CreateVideos duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v10, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v8    # "t1":J
    .end local v10    # "t2":J
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v0, v7}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 335
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 344
    :goto_1
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/VideoFragment;->access$502(Lcom/perm/kate/VideoFragment;I)I

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/VideoFragment$9$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoFragment$9$1;-><init>(Lcom/perm/kate/VideoFragment$9;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$9;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v0, v7}, Lcom/perm/kate/VideoFragment;->showProgressBar(Z)V

    goto :goto_1
.end method
