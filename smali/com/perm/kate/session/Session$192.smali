.class Lcom/perm/kate/session/Session$192;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$need_sign:Ljava/lang/Integer;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;)V
    .locals 0

    .line 2061
    iput-object p1, p0, Lcom/perm/kate/session/Session$192;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$192;->val$user_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$192;->val$need_sign:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2064
    iget-object v0, p0, Lcom/perm/kate/session/Session$192;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v1, p0, Lcom/perm/kate/session/Session$192;->val$user_id:J

    iget-object v3, p0, Lcom/perm/kate/session/Session$192;->val$need_sign:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->isFriend(JLjava/lang/Integer;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
