.class Lcom/perm/kate/session/Session$239;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$group_id:J

.field final synthetic val$link_id:J

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/String;)V
    .locals 0

    .line 2484
    iput-object p1, p0, Lcom/perm/kate/session/Session$239;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$239;->val$group_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$239;->val$link_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$239;->val$text:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2487
    iget-object v0, p0, Lcom/perm/kate/session/Session$239;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$239;->val$group_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$239;->val$link_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$239;->val$text:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->editGroupLink(JJLjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
