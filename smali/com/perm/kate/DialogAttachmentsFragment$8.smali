.class Lcom/perm/kate/DialogAttachmentsFragment$8;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    .line 416
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p2, p3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1800(Lcom/perm/kate/DialogAttachmentsFragment;I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    .line 417
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object p2

    .line 418
    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 419
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;

    move-result-object p2

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 420
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    .line 421
    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 423
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p3, p2, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$600(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p3, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 424
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;

    move-result-object p2

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object p3, p3, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 425
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-boolean p1, p2, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    .line 426
    invoke-static {p2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 429
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {p1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1700(Lcom/perm/kate/DialogAttachmentsFragment;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
