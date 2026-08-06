.class Lcom/perm/kate/session/Session$237;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->editDoc(JJLjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$doc_id:J

.field final synthetic val$owner_id:J

.field final synthetic val$tags:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2381
    iput-object p1, p0, Lcom/perm/kate/session/Session$237;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$237;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$237;->val$doc_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$237;->val$title:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/session/Session$237;->val$tags:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/perm/kate/session/Session$237;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$237;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$237;->val$doc_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$237;->val$title:Ljava/lang/String;

    iget-object v7, p0, Lcom/perm/kate/session/Session$237;->val$tags:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/api/Api;->editDoc(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$237;->res:Ljava/lang/Object;

    .line 2385
    return-void
.end method
