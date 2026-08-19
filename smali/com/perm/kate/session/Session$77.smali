.class Lcom/perm/kate/session/Session$77;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment_id:J

.field final synthetic val$wallOwnerId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/perm/kate/session/Session$77;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$77;->val$wallOwnerId:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$77;->val$comment_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 983
    iget-object v0, p0, Lcom/perm/kate/session/Session$77;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$77;->val$wallOwnerId:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$77;->val$comment_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->deleteWallComment(Ljava/lang/Long;J)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
