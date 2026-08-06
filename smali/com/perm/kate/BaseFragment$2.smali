.class Lcom/perm/kate/BaseFragment$2;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V
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
    .line 163
    iput-object p1, p0, Lcom/perm/kate/BaseFragment$2;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$2;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 167
    return-void
.end method
