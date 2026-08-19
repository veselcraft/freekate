.class public final synthetic Lcom/perm/kate/BaseFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/perm/kate/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/BaseFragment$$ExternalSyntheticLambda0;->f$0:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    return-void
.end method
