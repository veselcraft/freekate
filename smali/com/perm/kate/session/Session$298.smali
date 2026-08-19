.class Lcom/perm/kate/session/Session$298;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$message_id:J

.field final synthetic val$peer_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJ)V
    .locals 0

    .line 3021
    iput-object p1, p0, Lcom/perm/kate/session/Session$298;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$298;->val$peer_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$298;->val$message_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3024
    iget-object v0, p0, Lcom/perm/kate/session/Session$298;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v1, p0, Lcom/perm/kate/session/Session$298;->val$peer_id:J

    iget-wide v3, p0, Lcom/perm/kate/session/Session$298;->val$message_id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->messagesPin(JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
