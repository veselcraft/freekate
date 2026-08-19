.class Lcom/perm/kate/MarketItemFragment$3;
.super Ljava/lang/Object;
.source "MarketItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketItemFragment;

.field final synthetic val$group:Lcom/perm/kate/api/Group;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketItemFragment;Lcom/perm/kate/api/Group;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    iput-object p2, p0, Lcom/perm/kate/MarketItemFragment$3;->val$group:Lcom/perm/kate/api/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 158
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$3;->val$group:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    const-string v1, "com.perm.kate.message_uid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/perm/kate/MarketItemFragment$3;->this$0:Lcom/perm/kate/MarketItemFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
