.class Lcom/perm/kate/BannedActivity$3;
.super Ljava/lang/Object;
.source "BannedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BannedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

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

    .line 99
    iget-object p1, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {p1}, Lcom/perm/kate/BannedActivity;->access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BannedAdapter$BannItem;

    .line 100
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget p4, p1, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    const/4 p5, 0x1

    if-nez p4, :cond_0

    .line 102
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f025c

    invoke-direct {p4, v0, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f03a9

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f00ba

    const/4 v1, 0x2

    invoke-direct {p4, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 107
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    .line 108
    invoke-static {p3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/BannedActivity$3$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/perm/kate/BannedActivity$3$1;-><init>(Lcom/perm/kate/BannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/BannedAdapter$BannItem;)V

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 125
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
