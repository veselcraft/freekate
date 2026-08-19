.class Lcom/perm/kate/session/Session$22;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$offset:I

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$start_comment_id:Ljava/lang/Long;

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;IILjava/lang/Long;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/perm/kate/session/Session$22;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$22;->val$video_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$22;->val$owner_id:Ljava/lang/Long;

    iput p7, p0, Lcom/perm/kate/session/Session$22;->val$offset:I

    iput p8, p0, Lcom/perm/kate/session/Session$22;->val$count:I

    iput-object p9, p0, Lcom/perm/kate/session/Session$22;->val$start_comment_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 455
    iget-object v0, p0, Lcom/perm/kate/session/Session$22;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$22;->val$video_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$22;->val$owner_id:Ljava/lang/Long;

    iget v5, p0, Lcom/perm/kate/session/Session$22;->val$offset:I

    iget v6, p0, Lcom/perm/kate/session/Session$22;->val$count:I

    iget-object v7, p0, Lcom/perm/kate/session/Session$22;->val$start_comment_id:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
