.class Lcom/perm/kate/MarketAlbumsFragment$7;
.super Ljava/lang/Thread;
.source "MarketAlbumsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;

.field final synthetic val$album_id:J

.field final synthetic val$callback_delete:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iput-wide p2, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->val$album_id:J

    iput-object p4, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->val$callback_delete:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 254
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 255
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketAlbumsFragment;->access$000(Lcom/perm/kate/MarketAlbumsFragment;)J

    move-result-wide v0

    neg-long v3, v0

    iget-wide v5, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->val$album_id:J

    iget-object v7, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->val$callback_delete:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->deleteMarketAlbum(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 256
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$7;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
