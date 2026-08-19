.class Lcom/perm/kate/ProfileInfoFragment$9;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$9;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 626
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$9;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$9;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$1000(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$9;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$900(Lcom/perm/kate/ProfileInfoFragment;)V

    :goto_0
    return-void
.end method
