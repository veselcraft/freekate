.class Lcom/perm/kate/session/Session$131;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$offset:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lcom/perm/kate/session/Session$131;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$131;->val$count:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/perm/kate/session/Session$131;->val$offset:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1503
    iget-object v0, p0, Lcom/perm/kate/session/Session$131;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$131;->val$count:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/perm/kate/session/Session$131;->val$offset:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getFavePostsNew(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
