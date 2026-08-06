.class Lcom/perm/kate/session/Session$238;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$owner_id:J

.field final synthetic val$page_id:Ljava/lang/Long;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/perm/kate/session/Session$238;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$238;->val$owner_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$238;->val$page_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$238;->val$title:Ljava/lang/String;

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
    .line 2393
    iget-object v0, p0, Lcom/perm/kate/session/Session$238;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$238;->val$owner_id:J

    iget-object v1, p0, Lcom/perm/kate/session/Session$238;->val$page_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$238;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/api/Api;->getPageUrl(JLjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$238;->res:Ljava/lang/Object;

    .line 2394
    return-void
.end method
