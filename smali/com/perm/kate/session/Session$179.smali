.class Lcom/perm/kate/session/Session$179;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$group_id:J

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1932
    iput-object p1, p0, Lcom/perm/kate/session/Session$179;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$179;->val$group_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$179;->val$offset:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$179;->val$count:Ljava/lang/Long;

    iput-object p8, p0, Lcom/perm/kate/session/Session$179;->val$user_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1935
    iget-object v0, p0, Lcom/perm/kate/session/Session$179;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$179;->val$group_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$179;->val$offset:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$179;->val$count:Ljava/lang/Long;

    iget-object v6, p0, Lcom/perm/kate/session/Session$179;->val$user_id:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
