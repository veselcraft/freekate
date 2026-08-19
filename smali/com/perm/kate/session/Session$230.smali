.class Lcom/perm/kate/session/Session$230;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$group_id:Ljava/lang/Long;

.field final synthetic val$privacy:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2403
    iput-object p1, p0, Lcom/perm/kate/session/Session$230;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$230;->val$group_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$230;->val$title:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/session/Session$230;->val$privacy:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2406
    iget-object v0, p0, Lcom/perm/kate/session/Session$230;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$230;->val$group_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/session/Session$230;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$230;->val$privacy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
