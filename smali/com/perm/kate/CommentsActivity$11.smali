.class Lcom/perm/kate/CommentsActivity$11;
.super Ljava/lang/Thread;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CommentsActivity;->removeRecentComments(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsActivity;

.field final synthetic val$spammer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-wide p2, p0, Lcom/perm/kate/CommentsActivity$11;->val$spammer_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 484
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    .line 485
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity$11;->val$spammer_id:J

    new-instance v6, Lcom/perm/kate/CommentsActivity$11$1;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/CommentsActivity$11$1;-><init>(Lcom/perm/kate/CommentsActivity$11;Landroid/app/Activity;)V

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteRecentWallComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 491
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->access$1400(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v2

    neg-long v2, v2

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity$11;->val$spammer_id:J

    new-instance v6, Lcom/perm/kate/CommentsActivity$11$2;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/CommentsActivity$11$2;-><init>(Lcom/perm/kate/CommentsActivity$11;Landroid/app/Activity;)V

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteRecentTopicComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 502
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    const v3, 0x7f07010a

    invoke-virtual {v2, v3}, Lcom/perm/kate/CommentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity$11;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v2, v2, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/CommentsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method
