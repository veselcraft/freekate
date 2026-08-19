.class Lcom/perm/kate/CommentsActivity$9;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->removeComment(Ljava/lang/Long;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;

.field final synthetic val$commentId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-object p2, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 512
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 513
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteWallComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 515
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->deletePhotoComment(JLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 517
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteNoteComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 519
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteVideoComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 520
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 521
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v10, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->deleteGroupTopicComment(JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 522
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$500(Lcom/perm/kate/CommentsActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 523
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$9;->val$commentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity$9;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$9;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteMarketComment(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_5
    return-void
.end method
