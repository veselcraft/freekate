.class Lcom/perm/kate/session/Session$154;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$item_id:Ljava/lang/Long;

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/perm/kate/session/Session$154;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$154;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$154;->val$owner_id:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$154;->val$item_id:Ljava/lang/Long;

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
    .line 1614
    iget-object v0, p0, Lcom/perm/kate/session/Session$154;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$154;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$154;->val$owner_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$154;->val$item_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$154;->res:Ljava/lang/Object;

    .line 1615
    return-void
.end method
