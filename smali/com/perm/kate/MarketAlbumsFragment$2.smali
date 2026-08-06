.class Lcom/perm/kate/MarketAlbumsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "MarketAlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketAlbumsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 100
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketAlbumsFragment;->showProgressBar(Z)V

    .line 101
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MarketAlbumsFragment;->showProgressBar(Z)V

    .line 94
    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$2;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v0}, Lcom/perm/kate/MarketAlbumsFragment;->access$100(Lcom/perm/kate/MarketAlbumsFragment;)V

    .line 95
    return-void
.end method
