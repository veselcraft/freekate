.class Lcom/perm/kate/session/Session$114;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$message_ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/perm/kate/session/Session$114;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$114;->val$message_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/perm/kate/session/Session$114;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$114;->val$message_ids:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/api/Api;->getMessagesById(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$114;->res:Ljava/lang/Object;

    .line 1255
    return-void
.end method
