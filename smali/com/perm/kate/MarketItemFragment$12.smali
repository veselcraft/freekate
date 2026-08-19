.class Lcom/perm/kate/MarketItemFragment$12;
.super Lcom/perm/kate/session/Callback;
.source "MarketItemFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Landroid/app/Activity;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$12;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 381
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$12;->this$0:Lcom/perm/kate/MarketItemFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 383
    iget-object p1, p0, Lcom/perm/kate/MarketItemFragment$12;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-static {p1}, Lcom/perm/kate/MarketItemFragment;->access$500(Lcom/perm/kate/MarketItemFragment;)V

    :cond_0
    return-void
.end method
