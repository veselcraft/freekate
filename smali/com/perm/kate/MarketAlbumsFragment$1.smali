.class Lcom/perm/kate/MarketAlbumsFragment$1;
.super Ljava/lang/Thread;
.source "MarketAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketAlbumsFragment;->refreshOnThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 54
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketAlbumsFragment;->access$000(Lcom/perm/kate/MarketAlbumsFragment;)J

    move-result-wide v2

    neg-long v2, v2

    const/4 v4, 0x0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object v6, v0, Lcom/perm/kate/MarketAlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$1;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 55
    return-void
.end method
