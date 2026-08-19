.class Lcom/perm/kate/session/Session$163;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$audio:Ljava/lang/String;

.field final synthetic val$target_ids:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lcom/perm/kate/session/Session$163;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$163;->val$audio:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$163;->val$target_ids:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1791
    iget-object v0, p0, Lcom/perm/kate/session/Session$163;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$163;->val$audio:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$163;->val$target_ids:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
