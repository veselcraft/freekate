.class Lcom/perm/kate/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseFragment;->hideSwipeRefreshIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/perm/kate/BaseFragment$3;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$3;->this$0:Lcom/perm/kate/BaseFragment;

    iget-object v0, v0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$3;->this$0:Lcom/perm/kate/BaseFragment;

    iget-object v0, v0, Lcom/perm/kate/BaseFragment;->swipeRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 183
    :cond_0
    return-void
.end method
