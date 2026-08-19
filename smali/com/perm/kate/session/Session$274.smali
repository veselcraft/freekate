.class Lcom/perm/kate/session/Session$274;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$item_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJ)V
    .locals 0

    .line 2803
    iput-object p1, p0, Lcom/perm/kate/session/Session$274;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$274;->val$type:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$274;->val$owner_id:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$274;->val$item_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2806
    iget-object v0, p0, Lcom/perm/kate/session/Session$274;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$274;->val$type:Ljava/lang/String;

    iget-wide v3, p0, Lcom/perm/kate/session/Session$274;->val$owner_id:J

    iget-wide v5, p0, Lcom/perm/kate/session/Session$274;->val$item_id:J

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->ignoreItem(Ljava/lang/String;JJ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
