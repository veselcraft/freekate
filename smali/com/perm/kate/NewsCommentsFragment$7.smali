.class Lcom/perm/kate/NewsCommentsFragment$7;
.super Ljava/lang/Thread;
.source "NewsCommentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$7;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "note"

    const-string v1, "video"

    const-string v2, "photo"

    const-string v3, "topic"

    const-string v4, "post"

    .line 378
    :try_start_0
    iget-object v5, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 380
    iget-object v5, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 381
    iget-object v5, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v4, v6

    move-object v5, v4

    .line 383
    :goto_0
    iget-object v7, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v7, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 384
    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 386
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 387
    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v3, v4

    .line 389
    :goto_1
    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 392
    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v3, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 394
    :goto_2
    iget-object v3, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 396
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 397
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v1, v2

    .line 399
    :goto_3
    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 401
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 402
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v2, v0

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    move-object v4, v5

    move-object v3, v6

    .line 404
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v5, v0, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 406
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method
