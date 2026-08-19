.class Lcom/perm/kate/MarketAlbumsFragment$1;
.super Ljava/lang/Thread;
.source "MarketAlbumsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 55
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v1}, Lcom/perm/kate/MarketAlbumsFragment;->access$000(Lcom/perm/kate/MarketAlbumsFragment;)J

    move-result-wide v1

    neg-long v1, v1

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object v5, v3, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
