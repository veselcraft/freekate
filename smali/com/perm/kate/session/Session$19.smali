.class Lcom/perm/kate/session/Session$19;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aids:Ljava/util/Collection;

.field final synthetic val$need_covers:Ljava/lang/Integer;

.field final synthetic val$need_system:Ljava/lang/Integer;

.field final synthetic val$oid:Ljava/lang/Long;

.field final synthetic val$photo_sizes:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/perm/kate/session/Session$19;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$19;->val$oid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/session/Session$19;->val$aids:Ljava/util/Collection;

    iput-object p6, p0, Lcom/perm/kate/session/Session$19;->val$need_system:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/perm/kate/session/Session$19;->val$need_covers:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/perm/kate/session/Session$19;->val$photo_sizes:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 428
    iget-object v0, p0, Lcom/perm/kate/session/Session$19;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$19;->val$oid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/session/Session$19;->val$aids:Ljava/util/Collection;

    iget-object v4, p0, Lcom/perm/kate/session/Session$19;->val$need_system:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$19;->val$need_covers:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/perm/kate/session/Session$19;->val$photo_sizes:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
