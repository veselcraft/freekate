.class Lcom/perm/kate/CommentsActivity$20;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$comment_id:Ljava/lang/Long;

.field final synthetic val$like:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/CommentsActivity$20;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$20;->val$comment_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/CommentsActivity$20;->val$callback_like:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 827
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 828
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "comment"

    goto :goto_0

    :cond_0
    const-string v0, "market_comment"

    goto :goto_0

    :cond_1
    const-string v0, "topic_comment"

    goto :goto_0

    :cond_2
    const-string v0, "video_comment"

    goto :goto_0

    :cond_3
    const-string v0, "photo_comment"

    .line 845
    :goto_0
    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity$20;->val$like:Z

    if-eqz v1, :cond_4

    .line 846
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity$20;->val$comment_id:Ljava/lang/Long;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$20;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    move-object v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    .line 848
    :cond_4
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/CommentsActivity$20;->val$comment_id:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$20;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$20;->this$0:Lcom/perm/kate/CommentsActivity;

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
