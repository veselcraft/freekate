.class Lcom/perm/kate/CommentRepliesActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "CommentRepliesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentRepliesActivity;->removeComment(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentRepliesActivity;

.field final synthetic val$commentId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iput-object p3, p0, Lcom/perm/kate/CommentRepliesActivity$5;->val$commentId:Ljava/lang/Long;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    .line 290
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 278
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 279
    check-cast v0, Ljava/lang/Boolean;

    .line 280
    .local v0, "removed":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v2}, Lcom/perm/kate/CommentRepliesActivity;->access$600(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v4}, Lcom/perm/kate/CommentRepliesActivity;->access$500(Lcom/perm/kate/CommentRepliesActivity;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v6}, Lcom/perm/kate/CommentRepliesActivity;->access$400(Lcom/perm/kate/CommentRepliesActivity;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/perm/kate/CommentRepliesActivity$5;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteComment(JJJJ)Z

    .line 282
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity$5;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/CommentRepliesActivity;->deleteComment(J)V

    .line 283
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity$5;->this$0:Lcom/perm/kate/CommentRepliesActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentRepliesActivity;->access$000(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 285
    :cond_0
    return-void
.end method
