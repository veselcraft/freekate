.class Lcom/perm/kate/MarketItemFragment$6;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/MarketItemFragment;->access$100(Lcom/perm/kate/MarketItemFragment;Landroid/view/View;)V

    return-void
.end method
