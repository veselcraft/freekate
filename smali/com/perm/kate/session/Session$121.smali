.class Lcom/perm/kate/session/Session$121;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$end_time:Ljava/lang/Long;

.field final synthetic val$filters:Ljava/lang/String;

.field final synthetic val$start_from:Ljava/lang/String;

.field final synthetic val$start_time:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/perm/kate/session/Session$121;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$121;->val$filters:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$121;->val$start_time:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$121;->val$end_time:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$121;->val$count:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/perm/kate/session/Session$121;->val$start_from:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1413
    iget-object v0, p0, Lcom/perm/kate/session/Session$121;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$121;->val$filters:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$121;->val$start_time:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$121;->val$end_time:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$121;->val$count:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/perm/kate/session/Session$121;->val$start_from:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Lcom/perm/kate/api/Notifications;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
