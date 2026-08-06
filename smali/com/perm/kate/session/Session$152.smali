.class Lcom/perm/kate/session/Session$152;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$date:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$peer_id:Ljava/lang/Long;

.field final synthetic val$preview_length:Ljava/lang/Integer;

.field final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/perm/kate/session/Session$152;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$152;->val$q:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$152;->val$peer_id:Ljava/lang/Long;

    iput p6, p0, Lcom/perm/kate/session/Session$152;->val$offset:I

    iput p7, p0, Lcom/perm/kate/session/Session$152;->val$count:I

    iput-object p8, p0, Lcom/perm/kate/session/Session$152;->val$preview_length:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/perm/kate/session/Session$152;->val$date:Ljava/lang/String;

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
    .line 1596
    iget-object v0, p0, Lcom/perm/kate/session/Session$152;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$152;->val$q:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$152;->val$peer_id:Ljava/lang/Long;

    iget v3, p0, Lcom/perm/kate/session/Session$152;->val$offset:I

    iget v4, p0, Lcom/perm/kate/session/Session$152;->val$count:I

    iget-object v5, p0, Lcom/perm/kate/session/Session$152;->val$preview_length:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/perm/kate/session/Session$152;->val$date:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/api/Api;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$152;->res:Ljava/lang/Object;

    .line 1597
    return-void
.end method
