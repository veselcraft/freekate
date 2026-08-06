.class Lcom/perm/kate/MarketItemFragment$6;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemFragment;->displayDataOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MarketItemFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$6;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/MarketItemFragment;->access$100(Lcom/perm/kate/MarketItemFragment;Landroid/view/View;)V

    goto :goto_0
.end method
