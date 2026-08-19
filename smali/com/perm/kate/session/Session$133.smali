.class Lcom/perm/kate/session/Session$133;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$offset:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 1518
    iput-object p1, p0, Lcom/perm/kate/session/Session$133;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$133;->val$fields:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$133;->val$count:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/perm/kate/session/Session$133;->val$offset:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1521
    iget-object v0, p0, Lcom/perm/kate/session/Session$133;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$133;->val$fields:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$133;->val$count:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/perm/kate/session/Session$133;->val$offset:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->getFaveGroups(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
