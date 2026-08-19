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

    .line 91
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iput-object p2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    iput p3, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    iput-boolean p4, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$is_forward_messages:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget p2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    invoke-static {p1, p2}, Lcom/perm/kate/AttachmentsActivity;->access$300(Lcom/perm/kate/AttachmentsActivity;I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget p2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    invoke-static {p1, p2}, Lcom/perm/kate/AttachmentsActivity;->access$200(Lcom/perm/kate/AttachmentsActivity;I)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->this$1:Lcom/perm/kate/AttachmentsActivity$2;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget p2, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$position:I

    iget-boolean v0, p0, Lcom/perm/kate/AttachmentsActivity$2$1;->val$is_forward_messages:Z

    invoke-static {p1, p2, v0}, Lcom/perm/kate/AttachmentsActivity;->access$100(Lcom/perm/kate/AttachmentsActivity;IZ)V

    :goto_0
    return-void
.end method
