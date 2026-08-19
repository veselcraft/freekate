.class Lcom/perm/kate/session/Session$167;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$aids:Ljava/util/ArrayList;

.field final synthetic val$album_id:J

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;JJ)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lcom/perm/kate/session/Session$167;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$167;->val$aids:Ljava/util/ArrayList;

    iput-wide p5, p0, Lcom/perm/kate/session/Session$167;->val$album_id:J

    iput-wide p7, p0, Lcom/perm/kate/session/Session$167;->val$owner_id:J

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1827
    iget-object v0, p0, Lcom/perm/kate/session/Session$167;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v2, p0, Lcom/perm/kate/session/Session$167;->val$aids:Ljava/util/ArrayList;

    iget-wide v3, p0, Lcom/perm/kate/session/Session$167;->val$album_id:J

    iget-wide v5, p0, Lcom/perm/kate/session/Session$167;->val$owner_id:J

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/api/Api;->moveToAudioAlbum(Ljava/util/ArrayList;JJ)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
