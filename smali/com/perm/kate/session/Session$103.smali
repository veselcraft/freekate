.class Lcom/perm/kate/session/Session$103;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$return_system:Z

.field final synthetic val$user_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Z)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcom/perm/kate/session/Session$103;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$103;->val$user_id:Ljava/lang/Long;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$103;->val$return_system:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1237
    iget-object v0, p0, Lcom/perm/kate/session/Session$103;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$103;->val$user_id:Ljava/lang/Long;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$103;->val$return_system:Z

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->friendsLists(Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
