.class Lcom/perm/kate/session/Session$44;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$album_id:Ljava/lang/Long;

.field final synthetic val$count:Ljava/lang/Long;

.field final synthetic val$extended:Z

.field final synthetic val$offset:Ljava/lang/Long;

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$videos:Ljava/lang/String;

.field final synthetic val$width:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/perm/kate/session/Session$44;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$44;->val$videos:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$44;->val$owner_id:Ljava/lang/Long;

    iput-object p6, p0, Lcom/perm/kate/session/Session$44;->val$album_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$44;->val$width:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/session/Session$44;->val$count:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$44;->val$offset:Ljava/lang/Long;

    iput-boolean p10, p0, Lcom/perm/kate/session/Session$44;->val$extended:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 673
    iget-object v0, p0, Lcom/perm/kate/session/Session$44;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$44;->val$videos:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/session/Session$44;->val$owner_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$44;->val$album_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/session/Session$44;->val$width:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/session/Session$44;->val$count:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/session/Session$44;->val$offset:Ljava/lang/Long;

    iget-boolean v8, p0, Lcom/perm/kate/session/Session$44;->val$extended:Z

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
