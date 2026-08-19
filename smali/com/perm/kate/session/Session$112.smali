.class Lcom/perm/kate/session/Session$112;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$cid:J

.field final synthetic val$gid:J

.field final synthetic val$tid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJJ)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/perm/kate/session/Session$112;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$112;->val$gid:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$112;->val$tid:J

    iput-wide p8, p0, Lcom/perm/kate/session/Session$112;->val$cid:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1318
    iget-object v0, p0, Lcom/perm/kate/session/Session$112;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$112;->val$gid:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$112;->val$tid:J

    iget-wide v6, p0, Lcom/perm/kate/session/Session$112;->val$cid:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->deleteGroupTopicComment(JJJ)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
