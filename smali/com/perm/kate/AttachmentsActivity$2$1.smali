.class Lcom/perm/kate/AttachmentsActivity$2$1;
.super Ljava/lang/Object;
.source "AttachmentsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AttachmentsActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AttachmentsActivity$2;

.field final synthetic val$is_forward_messages:Z

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsActivity$2;Ljava/util/ArrayList;IZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AttachmentsActivity$2;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iput-object p2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    iput-boolean p4, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$is_forward_messages:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget v1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    iget-boolean v2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$is_forward_messages:Z

    invoke-static {v0, v1, v2}, Lcom/perm/kate/AttachmentsActivity;->access$100(Lcom/perm/kate/AttachmentsActivity;IZ)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget v1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    invoke-static {v0, v1}, Lcom/perm/kate/AttachmentsActivity;->access$200(Lcom/perm/kate/AttachmentsActivity;I)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
