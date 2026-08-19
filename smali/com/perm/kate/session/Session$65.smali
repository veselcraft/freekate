.class Lcom/perm/kate/session/Session$65;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$offset:I

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$parent_comment_id:J

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$reverse_order:Z

.field final synthetic val$start_comment_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;J)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/perm/kate/session/Session$65;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$65;->val$owner_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$65;->val$post_id:Ljava/lang/Long;

    iput p6, p0, Lcom/perm/kate/session/Session$65;->val$offset:I

    iput p7, p0, Lcom/perm/kate/session/Session$65;->val$count:I

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$65;->val$reverse_order:Z

    iput-object p9, p0, Lcom/perm/kate/session/Session$65;->val$start_comment_id:Ljava/lang/Long;

    iput-wide p10, p0, Lcom/perm/kate/session/Session$65;->val$parent_comment_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 871
    iget-object v0, p0, Lcom/perm/kate/session/Session$65;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$65;->val$owner_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$65;->val$post_id:Ljava/lang/Long;

    iget v4, p0, Lcom/perm/kate/session/Session$65;->val$offset:I

    iget v5, p0, Lcom/perm/kate/session/Session$65;->val$count:I

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$65;->val$reverse_order:Z

    iget-object v7, p0, Lcom/perm/kate/session/Session$65;->val$start_comment_id:Ljava/lang/Long;

    iget-wide v8, p0, Lcom/perm/kate/session/Session$65;->val$parent_comment_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/api/Api;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;J)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
