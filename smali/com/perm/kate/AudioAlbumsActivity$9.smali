.class Lcom/perm/kate/AudioAlbumsActivity$9;
.super Ljava/lang/Thread;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumsActivity;->loadMore()V
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

    .line 295
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 298
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$400(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 299
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$200(Lcom/perm/kate/AudioAlbumsActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$1500(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/AudioAlbumsActivity$9;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
