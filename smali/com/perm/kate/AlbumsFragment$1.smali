.class Lcom/perm/kate/AlbumsFragment$1;
.super Ljava/lang/Thread;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AlbumsFragment;->refreshOnThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 61
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v1}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object v6, v5, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-virtual {v5}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 62
    return-void
.end method
