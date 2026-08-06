.class Lcom/perm/kate/DialogAttachmentsFragment$8;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DialogAttachmentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2, p3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1700(Lcom/perm/kate/DialogAttachmentsFragment;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    .local v0, "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 367
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$8;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$600(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 368
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
