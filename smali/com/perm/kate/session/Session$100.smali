.class Lcom/perm/kate/session/Session$100;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$answer_ids:Ljava/util/ArrayList;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$is_board:Z

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$owner_id:J

.field final synthetic val$poll_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/perm/kate/session/Session$100;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$100;->val$poll_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$100;->val$owner_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$100;->val$answer_ids:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/perm/kate/session/Session$100;->val$count:Ljava/lang/Long;

    iput-object p10, p0, Lcom/perm/kate/session/Session$100;->val$offset:Ljava/lang/Long;

    iput-object p11, p0, Lcom/perm/kate/session/Session$100;->val$fields:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/perm/kate/session/Session$100;->val$is_board:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1210
    iget-object v0, p0, Lcom/perm/kate/session/Session$100;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$100;->val$poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$100;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$100;->val$answer_ids:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/perm/kate/session/Session$100;->val$count:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/session/Session$100;->val$offset:Ljava/lang/Long;

    iget-object v9, p0, Lcom/perm/kate/session/Session$100;->val$fields:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/perm/kate/session/Session$100;->val$is_board:Z

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/api/Api;->getPollVoters(JJLjava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
