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

    .line 50
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    iput-object p2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 53
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 54
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$000(Lcom/perm/kate/AudioAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$100(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$200(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$300(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editAudioAlbum(Ljava/lang/String;JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumActivity;->access$200(Lcom/perm/kate/AudioAlbumActivity;)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/AudioAlbumActivity;->access$400(Lcom/perm/kate/AudioAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioAlbumActivity$1;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->addAudioAlbum(Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
