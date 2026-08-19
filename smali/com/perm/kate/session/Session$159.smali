.class Lcom/perm/kate/session/Session$159;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$is_extended:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lcom/perm/kate/session/Session$159;->this$0:Lcom/perm/kate/session/Session;

    iput-boolean p4, p0, Lcom/perm/kate/session/Session$159;->val$is_extended:Z

    iput-object p5, p0, Lcom/perm/kate/session/Session$159;->val$fields:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1755
    iget-object v0, p0, Lcom/perm/kate/session/Session$159;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-boolean v1, p0, Lcom/perm/kate/session/Session$159;->val$is_extended:Z

    iget-object v2, p0, Lcom/perm/kate/session/Session$159;->val$fields:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getBanned(ZLjava/lang/String;)Lcom/perm/kate/api/BannArg;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
