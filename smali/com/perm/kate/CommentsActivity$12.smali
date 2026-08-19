.class Lcom/perm/kate/CommentsActivity$12;
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

    .line 577
    iput-object p1, p0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    iput-wide p2, p0, Lcom/perm/kate/CommentsActivity$12;->val$spammer_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 580
    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    const/4 v2, 0x0

    iput v2, v1, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    .line 581
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$1600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/perm/kate/CommentsActivity$12;->val$spammer_id:J

    new-instance v8, Lcom/perm/kate/CommentsActivity$12$1;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v8, v0, v1}, Lcom/perm/kate/CommentsActivity$12$1;-><init>(Lcom/perm/kate/CommentsActivity$12;Landroid/app/Activity;)V

    iget-object v9, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/session/Session;->deleteRecentWallComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 587
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-static {v1}, Lcom/perm/kate/CommentsActivity;->access$1600(Lcom/perm/kate/CommentsActivity;)J

    move-result-wide v1

    neg-long v11, v1

    iget-wide v13, v0, Lcom/perm/kate/CommentsActivity$12;->val$spammer_id:J

    new-instance v15, Lcom/perm/kate/CommentsActivity$12$2;

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    invoke-direct {v15, v0, v1}, Lcom/perm/kate/CommentsActivity$12$2;-><init>(Lcom/perm/kate/CommentsActivity$12;Landroid/app/Activity;)V

    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/session/Session;->deleteRecentTopicComments(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 598
    iget-object v1, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    const v4, 0x7f0f0157

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/perm/kate/CommentsActivity$12;->this$0:Lcom/perm/kate/CommentsActivity;

    iget v3, v3, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    return-void
.end method
