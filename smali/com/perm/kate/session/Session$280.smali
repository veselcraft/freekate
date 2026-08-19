.class Lcom/perm/kate/session/Session$280;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$after:Ljava/lang/Long;

.field final synthetic val$album_id:Ljava/lang/Long;

.field final synthetic val$audio_id:J

.field final synthetic val$before:Ljava/lang/Long;

.field final synthetic val$owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 2857
    iput-object p1, p0, Lcom/perm/kate/session/Session$280;->this$0:Lcom/perm/kate/session/Session;

    iput-wide p4, p0, Lcom/perm/kate/session/Session$280;->val$audio_id:J

    iput-wide p6, p0, Lcom/perm/kate/session/Session$280;->val$owner_id:J

    iput-object p8, p0, Lcom/perm/kate/session/Session$280;->val$before:Ljava/lang/Long;

    iput-object p9, p0, Lcom/perm/kate/session/Session$280;->val$after:Ljava/lang/Long;

    iput-object p10, p0, Lcom/perm/kate/session/Session$280;->val$album_id:Ljava/lang/Long;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2860
    iget-object v0, p0, Lcom/perm/kate/session/Session$280;->this$0:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-wide v2, p0, Lcom/perm/kate/session/Session$280;->val$audio_id:J

    iget-wide v4, p0, Lcom/perm/kate/session/Session$280;->val$owner_id:J

    iget-object v6, p0, Lcom/perm/kate/session/Session$280;->val$before:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/session/Session$280;->val$after:Ljava/lang/Long;

    iget-object v8, p0, Lcom/perm/kate/session/Session$280;->val$album_id:Ljava/lang/Long;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/api/Api;->audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
