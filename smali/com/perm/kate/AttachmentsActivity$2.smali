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

    .line 79
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f00ba

    const/4 p5, 0x0

    invoke-direct {p2, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p2, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object p2, p2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p4, "location:"

    invoke-virtual {p2, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p4, 0x1

    const p5, 0x7f0f03a9

    if-eqz p2, :cond_0

    .line 86
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {p2, p5, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object p2, p2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "poll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const/4 v0, 0x2

    invoke-direct {p2, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    iget-object p2, p2, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p5, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    .line 90
    new-instance p5, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity$2;->this$0:Lcom/perm/kate/AttachmentsActivity;

    invoke-direct {p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-static {p1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AttachmentsActivity$2$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/perm/kate/AttachmentsActivity$2$1;-><init>(Lcom/perm/kate/AttachmentsActivity$2;Ljava/util/ArrayList;IZ)V

    invoke-virtual {p5, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 108
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
