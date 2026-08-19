.class Lcom/perm/kate/MarketAlbumsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "MarketAlbumsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 101
    iget-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 94
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 95
    iget-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketAlbumsFragment;->access$100(Lcom/perm/kate/MarketAlbumsFragment;)V

    return-void
.end method
