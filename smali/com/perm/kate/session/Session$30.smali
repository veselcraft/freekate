.class Lcom/perm/kate/session/Session$30;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$item_id:J

.field final synthetic val$item_type:Ljava/lang/String;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/perm/kate/session/Session$30;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$30;->val$item_type:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$30;->val$item_id:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$30;->val$owner_id:J

    iput-object p9, p0, Lcom/perm/kate/session/Session$30;->val$filter:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/perm/kate/session/Session$30;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$30;->val$item_type:Ljava/lang/String;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$30;->val$item_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$30;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$30;->val$filter:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$30;->res:Ljava/lang/Object;

    .line 449
    return-void
.end method
