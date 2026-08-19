.class Lcom/perm/kate/session/Session$299;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$peer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V
    .locals 0

    .line 3030
    iput-object p1, p0, Lcom/perm/kate/session/Session$299;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$299;->val$peer_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3033
    iget-object v0, p0, Lcom/perm/kate/session/Session$299;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v1, p0, Lcom/perm/kate/session/Session$299;->val$peer_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->messagesUnpin(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
