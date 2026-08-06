.class Lcom/perm/kate/AttachmentsActivity$2;
.super Ljava/lang/Object;
.source "AttachmentsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070084

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v4, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "location:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070344

    invoke-direct {v4, v5, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 88
    .local v1, "is_forward_messages":Z
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/perm/kate/AttachmentsActivity$2$1;

    invoke-direct {v6, p0, v2, p3, v1}, Lcom/perm/kate/AttachmentsActivity$2$1;-><init>(Lcom/perm/kate/AttachmentsActivity$2;Ljava/util/ArrayList;IZ)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 103
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 104
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 105
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 106
    return-void
.end method
