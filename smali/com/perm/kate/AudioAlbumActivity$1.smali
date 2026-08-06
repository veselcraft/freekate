.class Lcom/perm/kate/AudioAlbumActivity$1;
.super Ljava/lang/Thread;
.source "AudioAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumActivity;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    iput-object p2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumActivity;->showProgressBar(Z)V

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "gid":Ljava/lang/Long;
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$000(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$000(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$100(Lcom/perm/kate/AudioAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumActivity;->access$200(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v5}, Lcom/perm/kate/AudioAlbumActivity;->access$300(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->editAudioAlbum(Ljava/lang/String;JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumActivity;->access$400(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/perm/kate/session/Session;->addAudioAlbum(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
