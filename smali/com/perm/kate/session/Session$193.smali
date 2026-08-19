.class Lcom/perm/kate/session/Session$193;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$important:Z

.field final synthetic val$message_ids:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Z)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/perm/kate/session/Session$193;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$193;->val$message_ids:Ljava/util/Collection;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$193;->val$important:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2073
    iget-object v0, p0, Lcom/perm/kate/session/Session$193;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$193;->val$message_ids:Ljava/util/Collection;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$193;->val$important:Z

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->messageMarkAsImportant(Ljava/util/Collection;Z)V

    return-void
.end method
