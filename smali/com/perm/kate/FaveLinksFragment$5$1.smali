.class Lcom/perm/kate/FaveLinksFragment$5$1;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveLinksFragment$5;

.field final synthetic val$link_id:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment$5;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FaveLinksFragment$5;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$link_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->this$1:Lcom/perm/kate/FaveLinksFragment$5;

    iget-object v0, v0, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$5$1;->val$link_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/FaveLinksFragment;->access$500(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
