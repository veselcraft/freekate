.class Lcom/perm/kate/session/Session$143;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->addBan(Ljava/util/Collection;Ljava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$gids:Ljava/util/Collection;

.field final synthetic val$uids:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/perm/kate/session/Session$143;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$143;->val$uids:Ljava/util/Collection;

    iput-object p5, p0, Lcom/perm/kate/session/Session$143;->val$gids:Ljava/util/Collection;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/perm/kate/session/Session$143;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$143;->val$uids:Ljava/util/Collection;

    iget-object v2, p0, Lcom/perm/kate/session/Session$143;->val$gids:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->addBan(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$143;->res:Ljava/lang/Object;

    .line 1516
    return-void
.end method
