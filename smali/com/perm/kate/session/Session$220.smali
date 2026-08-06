.class Lcom/perm/kate/session/Session$220;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->addGroupLink(JLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$group_id:J

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/perm/kate/session/Session$220;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$220;->val$group_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$220;->val$link:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/session/Session$220;->val$text:Ljava/lang/String;

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
    .line 2209
    iget-object v0, p0, Lcom/perm/kate/session/Session$220;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$220;->val$group_id:J

    iget-object v1, p0, Lcom/perm/kate/session/Session$220;->val$link:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/session/Session$220;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/api/Api;->addGroupLink(JLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Link;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$220;->res:Ljava/lang/Object;

    .line 2210
    return-void
.end method
