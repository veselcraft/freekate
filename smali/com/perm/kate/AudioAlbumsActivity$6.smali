.class Lcom/perm/kate/AudioAlbumsActivity$6;
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

    .line 256
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    iput-wide p2, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->val$album_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 260
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->val$album_id:J

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$1200(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->deleteAudioAlbum(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 261
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$6;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
