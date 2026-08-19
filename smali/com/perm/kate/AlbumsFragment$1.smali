.class Lcom/perm/kate/AlbumsFragment$1;
.super Ljava/lang/Thread;
.source "AlbumsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 72
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    invoke-static {v1}, Lcom/perm/kate/AlbumsFragment;->access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment$1;->this$0:Lcom/perm/kate/AlbumsFragment;

    iget-object v6, v2, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
