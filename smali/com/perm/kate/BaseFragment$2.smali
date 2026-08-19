.class Lcom/perm/kate/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/BaseFragment$2;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$2;->this$0:Lcom/perm/kate/BaseFragment;

    iget-object v0, v0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method
