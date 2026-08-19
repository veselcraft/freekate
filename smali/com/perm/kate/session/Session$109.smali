.class Lcom/perm/kate/session/Session$109;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$extended:I

.field final synthetic val$gid:J

.field final synthetic val$offset:I

.field final synthetic val$photo_sizes:I

.field final synthetic val$reverse_order:Z

.field final synthetic val$start_comment_id:Ljava/lang/Long;

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJIIIIZLjava/lang/Long;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/perm/kate/session/Session$109;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$109;->val$gid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$109;->val$tid:J

    iput p8, p0, Lcom/perm/kate/session/Session$109;->val$photo_sizes:I

    iput p9, p0, Lcom/perm/kate/session/Session$109;->val$extended:I

    iput p10, p0, Lcom/perm/kate/session/Session$109;->val$count:I

    iput p11, p0, Lcom/perm/kate/session/Session$109;->val$offset:I

    iput-boolean p12, p0, Lcom/perm/kate/session/Session$109;->val$reverse_order:Z

    iput-object p13, p0, Lcom/perm/kate/session/Session$109;->val$start_comment_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1291
    iget-object v0, p0, Lcom/perm/kate/session/Session$109;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$109;->val$gid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$109;->val$tid:J

    iget v6, p0, Lcom/perm/kate/session/Session$109;->val$photo_sizes:I

    iget v7, p0, Lcom/perm/kate/session/Session$109;->val$extended:I

    iget v8, p0, Lcom/perm/kate/session/Session$109;->val$count:I

    iget v9, p0, Lcom/perm/kate/session/Session$109;->val$offset:I

    iget-boolean v10, p0, Lcom/perm/kate/session/Session$109;->val$reverse_order:Z

    iget-object v11, p0, Lcom/perm/kate/session/Session$109;->val$start_comment_id:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/api/Api;->getGroupTopicComments(JJIIIIZLjava/lang/Long;)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
