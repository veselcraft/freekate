.class Lcom/perm/kate/session/Session$38;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aid:Ljava/lang/Long;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$rev:Z

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/perm/kate/session/Session$38;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$38;->val$uid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$38;->val$aid:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$38;->val$offset:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/perm/kate/session/Session$38;->val$count:Ljava/lang/Integer;

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$38;->val$rev:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 605
    iget-object v0, p0, Lcom/perm/kate/session/Session$38;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$38;->val$uid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$38;->val$aid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$38;->val$offset:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$38;->val$count:Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$38;->val$rev:Z

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
