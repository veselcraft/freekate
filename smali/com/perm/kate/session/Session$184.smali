.class Lcom/perm/kate/session/Session$184;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->reportUser(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/perm/kate/session/Session$184;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$184;->val$user_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$184;->val$type:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$184;->val$comment:Ljava/lang/String;

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
    .line 1885
    iget-object v0, p0, Lcom/perm/kate/session/Session$184;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$184;->val$user_id:J

    iget-object v1, p0, Lcom/perm/kate/session/Session$184;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$184;->val$comment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/api/Api;->reportUser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$184;->res:Ljava/lang/Object;

    .line 1886
    return-void
.end method
