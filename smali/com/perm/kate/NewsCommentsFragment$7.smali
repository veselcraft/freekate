.class Lcom/perm/kate/NewsCommentsFragment$7;
.super Ljava/lang/Thread;
.source "NewsCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCommentsFragment;->unsubscribe(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$7;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "owner_id":Ljava/lang/Long;
    const/4 v3, 0x0

    .line 376
    .local v3, "item_id":Ljava/lang/Long;
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "post"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const-string v1, "post"

    .line 378
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 379
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "topic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 383
    .local v6, "source_id":Ljava/lang/String;
    const-string v1, "topic"

    .line 384
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 385
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 387
    .end local v6    # "source_id":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "photo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const-string v1, "photo"

    .line 389
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 390
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 393
    const-string v1, "video"

    .line 394
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 395
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 397
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v4, "note"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 398
    const-string v1, "note"

    .line 399
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 400
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$7;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 402
    :cond_4
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$7;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v4, v4, Lcom/perm/kate/NewsCommentsFragment;->callbackUnsubscribe:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/NewsCommentsFragment$7;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v5}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v7

    .line 404
    .local v7, "th":Ljava/lang/Throwable;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 405
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
