.class Lcom/perm/kate/session/Session$261;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$album_ids:Ljava/util/ArrayList;

.field final synthetic val$item_id:J

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/util/ArrayList;)V
    .locals 0

    .line 2685
    iput-object p1, p0, Lcom/perm/kate/session/Session$261;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$261;->val$owner_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$261;->val$item_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$261;->val$album_ids:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2688
    iget-object v0, p0, Lcom/perm/kate/session/Session$261;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$261;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$261;->val$item_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$261;->val$album_ids:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->removeMarketFromAlbum(JJLjava/util/ArrayList;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
