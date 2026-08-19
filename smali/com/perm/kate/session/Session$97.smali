.class Lcom/perm/kate/session/Session$97;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$is_board:Z

.field final synthetic val$owner_id:J

.field final synthetic val$poll_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJZ)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/perm/kate/session/Session$97;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$97;->val$poll_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$97;->val$owner_id:J

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$97;->val$is_board:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1183
    iget-object v0, p0, Lcom/perm/kate/session/Session$97;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$97;->val$poll_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$97;->val$owner_id:J

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$97;->val$is_board:Z

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getPoll(JJZ)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
