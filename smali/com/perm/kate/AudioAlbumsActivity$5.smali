.class Lcom/perm/kate/AudioAlbumsActivity$5;
.super Ljava/lang/Thread;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity;->deleteAudioAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;

.field final synthetic val$album_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    iput-wide p2, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->val$album_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    .line 241
    const/4 v4, 0x0

    .line 242
    .local v4, "gid":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 244
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->val$album_id:J

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$1100(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/AudioAlbumsActivity$5;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->deleteAudioAlbum(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 245
    return-void
.end method
