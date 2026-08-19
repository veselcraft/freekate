.class Lcom/perm/kate/FaveLinksFragment$5$1;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveLinksFragment$5;

.field final synthetic val$link_id:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment$5;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$link_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$url:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iget-object p2, p2, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iget-object p1, p1, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$link_id:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perm/kate/FaveLinksFragment;->access$400(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$url:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iget-object p2, p2, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
