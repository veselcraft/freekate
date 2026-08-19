.class Lcom/perm/kate/AudioAlbumsActivity$2;
.super Ljava/lang/Thread;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 81
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$200(Lcom/perm/kate/AudioAlbumsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$300(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
