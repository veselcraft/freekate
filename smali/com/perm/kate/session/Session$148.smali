.class Lcom/perm/kate/session/Session$148;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:Ljava/lang/Integer;

.field final synthetic val$is_need_system:Z

.field final synthetic val$offset:Ljava/lang/Integer;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JLjava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/perm/kate/session/Session$148;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$148;->val$owner_id:J

    iput-object p6, p0, Lcom/perm/kate/session/Session$148;->val$offset:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/perm/kate/session/Session$148;->val$count:Ljava/lang/Integer;

    iput-boolean p8, p0, Lcom/perm/kate/session/Session$148;->val$is_need_system:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1656
    iget-object v0, p0, Lcom/perm/kate/session/Session$148;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$148;->val$owner_id:J

    iget-object v4, p0, Lcom/perm/kate/session/Session$148;->val$offset:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/perm/kate/session/Session$148;->val$count:Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/perm/kate/session/Session$148;->val$is_need_system:Z

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
