.class Lcom/perm/kate/session/Session$69;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->removeWallPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$post_id:Ljava/lang/Long;

.field final synthetic val$wallOwnerId:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/perm/kate/session/Session$69;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$69;->val$post_id:Ljava/lang/Long;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$69;->val$wallOwnerId:J

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
    .line 814
    iget-object v0, p0, Lcom/perm/kate/session/Session$69;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$69;->val$post_id:Ljava/lang/Long;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$69;->val$wallOwnerId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->removeWallPost(Ljava/lang/Long;J)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$69;->res:Ljava/lang/Object;

    .line 815
    return-void
.end method
