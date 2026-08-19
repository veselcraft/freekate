.class Lcom/perm/kate/session/Session$16;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$delete_for_all:Ljava/lang/Integer;

.field final synthetic val$message_ids:Ljava/util/ArrayList;

.field final synthetic val$report_spam:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/lang/Integer;Z)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/perm/kate/session/Session$16;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$16;->val$message_ids:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/session/Session$16;->val$delete_for_all:Ljava/lang/Integer;

    iput-boolean p6, p0, Lcom/perm/kate/session/Session$16;->val$report_spam:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/perm/kate/session/Session$16;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$16;->val$message_ids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/session/Session$16;->val$delete_for_all:Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/perm/kate/session/Session$16;->val$report_spam:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->deleteMessage(Ljava/util/Collection;Ljava/lang/Integer;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
