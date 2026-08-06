.class Lcom/perm/kate/MarketItemFragment$3;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MarketItemFragment;->displayData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$group:Lcom/perm/kate/api/Group;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketItemFragment;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-object p2, p0, Lcom/perm/kate/MarketItemFragment$3;->val$group:Lcom/perm/kate/api/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1}, Lcom/perm/kate/MarketItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    const-string v1, "com.perm.kate.message_uid"

    iget-object v2, p0, Lcom/perm/kate/MarketItemFragment$3;->val$group:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/MarketItemFragment;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
