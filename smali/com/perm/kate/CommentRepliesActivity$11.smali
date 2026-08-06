.class Lcom/perm/kate/CommentRepliesActivity$11;
.super Ljava/lang/Thread;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$comment_id:Ljava/lang/Long;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$11;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-boolean p2, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$comment_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$callback_like:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 401
    const/4 v3, 0x0

    .line 402
    .local v3, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$11;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$1200(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 403
    .local v1, "owner_id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$11;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 417
    :pswitch_0
    const-string v3, "comment"

    .line 420
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$like:Z

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$comment_id:Ljava/lang/Long;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/CommentRepliesActivity$11;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 424
    :goto_1
    return-void

    .line 405
    :pswitch_1
    const-string v3, "photo_comment"

    .line 406
    goto :goto_0

    .line 408
    :pswitch_2
    const-string v3, "video_comment"

    .line 409
    goto :goto_0

    .line 411
    :pswitch_3
    const-string v3, "topic_comment"

    .line 412
    goto :goto_0

    .line 414
    :pswitch_4
    const-string v3, "market_comment"

    .line 415
    goto :goto_0

    .line 423
    :cond_0
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v7, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$comment_id:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/CommentRepliesActivity$11;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/kate/CommentRepliesActivity$11;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
