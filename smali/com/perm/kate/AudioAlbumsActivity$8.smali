.class Lcom/perm/kate/AudioAlbumsActivity$8;
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
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 282
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumsActivity;->access$300(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 283
    .local v6, "offset":I
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v3}, Lcom/perm/kate/AudioAlbumsActivity;->access$100(Lcom/perm/kate/AudioAlbumsActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v4}, Lcom/perm/kate/AudioAlbumsActivity;->access$1400(Lcom/perm/kate/AudioAlbumsActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AudioAlbumsActivity$8;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 284
    return-void
.end method
