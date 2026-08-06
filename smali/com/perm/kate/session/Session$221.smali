.class Lcom/perm/kate/session/Session$221;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->deleteLastWallPosts(JILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/perm/kate/session/Session$221;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$221;->val$owner_id:J

    iput p6, p0, Lcom/perm/kate/session/Session$221;->val$count:I

    iput-object p7, p0, Lcom/perm/kate/session/Session$221;->val$filter:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/perm/kate/session/Session$221;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$221;->val$owner_id:J

    iget v1, p0, Lcom/perm/kate/session/Session$221;->val$count:I

    iget-object v4, p0, Lcom/perm/kate/session/Session$221;->val$filter:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/api/Api;->deleteLastWallPosts(JILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$221;->res:Ljava/lang/Object;

    .line 2219
    return-void
.end method
