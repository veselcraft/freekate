.class Lcom/perm/kate/session/Session$96;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$photo_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1171
    iput-object p1, p0, Lcom/perm/kate/session/Session$96;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$96;->val$owner_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$96;->val$photo_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1174
    iget-object v0, p0, Lcom/perm/kate/session/Session$96;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$96;->val$owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$96;->val$photo_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->deletePhoto(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
