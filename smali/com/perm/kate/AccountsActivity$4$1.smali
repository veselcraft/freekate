.class Lcom/perm/kate/AccountsActivity$4$1;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AccountsActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AccountsActivity$4;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity$4;Ljava/util/ArrayList;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AccountsActivity$4;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$4$1;->this$1:Lcom/perm/kate/AccountsActivity$4;

    iput-object p2, p0, Lcom/perm/kate/AccountsActivity$4$1;->val$menus:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perm/kate/AccountsActivity$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$4$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$4$1;->this$1:Lcom/perm/kate/AccountsActivity$4;

    iget-object v0, v0, Lcom/perm/kate/AccountsActivity$4;->this$0:Lcom/perm/kate/AccountsActivity;

    iget v1, p0, Lcom/perm/kate/AccountsActivity$4$1;->val$position:I

    invoke-static {v0, v1}, Lcom/perm/kate/AccountsActivity;->access$100(Lcom/perm/kate/AccountsActivity;I)V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
