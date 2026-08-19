.class Lcom/perm/kate/session/Session$115;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$uids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcom/perm/kate/session/Session$115;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$115;->val$uids:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/session/Session$115;->val$fields:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1345
    iget-object v0, p0, Lcom/perm/kate/session/Session$115;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$115;->val$uids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/session/Session$115;->val$fields:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/perm/kate/api/Api;->getGroups(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
