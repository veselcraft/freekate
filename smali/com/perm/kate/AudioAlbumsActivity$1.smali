.class Lcom/perm/kate/AudioAlbumsActivity$1;
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
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v3}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v4}, Lcom/perm/kate/AudioAlbumsActivity;->access$200(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AudioAlbumsActivity$1;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 65
    return-void
.end method
