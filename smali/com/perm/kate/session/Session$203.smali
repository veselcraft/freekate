.class Lcom/perm/kate/session/Session$203;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->friendsEdit(JLjava/util/Collection;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$list_ids:Ljava/util/Collection;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/perm/kate/session/Session$203;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$203;->val$user_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$203;->val$list_ids:Ljava/util/Collection;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/perm/kate/session/Session$203;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$203;->val$user_id:J

    iget-object v1, p0, Lcom/perm/kate/session/Session$203;->val$list_ids:Ljava/util/Collection;

    invoke-virtual {v0, v2, v3, v1}, Lcom/perm/kate/api/Api;->friendsEdit(JLjava/util/Collection;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$203;->res:Ljava/lang/Object;

    .line 2057
    return-void
.end method
