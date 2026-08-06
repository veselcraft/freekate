.class Lcom/perm/kate/GroupLinksActivity$2$1;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupLinksActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupLinksActivity$2;

.field final synthetic val$link:Lcom/perm/kate/api/Link;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity$2;Ljava/util/ArrayList;Lcom/perm/kate/api/Link;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GroupLinksActivity$2;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iput-object p2, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iget-object v0, v0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->access$100(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->this$1:Lcom/perm/kate/GroupLinksActivity$2;

    iget-object v0, v0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupLinksActivity$2$1;->val$link:Lcom/perm/kate/api/Link;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupLinksActivity;->access$200(Lcom/perm/kate/GroupLinksActivity;Lcom/perm/kate/api/Link;)V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
