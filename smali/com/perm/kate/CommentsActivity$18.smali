.class Lcom/perm/kate/CommentsActivity$18;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->refreshReplyInThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$callback_reply_refresh:Lcom/perm/kate/session/Callback;

.field final synthetic val$comment_id:J

.field final synthetic val$parent_comment_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;JJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-wide p2, p0, Lcom/perm/kate/CommentsActivity$18;->val$comment_id:J

    iput-wide p4, p0, Lcom/perm/kate/CommentsActivity$18;->val$parent_comment_id:J

    iput-object p6, p0, Lcom/perm/kate/CommentsActivity$18;->val$callback_reply_refresh:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 785
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 786
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v6, v0, Lcom/perm/kate/CommentsActivity;->page_size:I

    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity$18;->val$comment_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/perm/kate/CommentsActivity$18;->val$parent_comment_id:J

    iget-object v11, p0, Lcom/perm/kate/CommentsActivity$18;->val$callback_reply_refresh:Lcom/perm/kate/session/Callback;

    iget-object v12, p0, Lcom/perm/kate/CommentsActivity$18;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
