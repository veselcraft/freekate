.class Lcom/perm/kate/GroupLinksActivity$2;
.super Ljava/lang/Object;
.source "GroupLinksActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupLinksActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupLinksActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Link;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 95
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f01ec

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f00ba

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/GroupLinksActivity$2$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/GroupLinksActivity$2$1;-><init>(Lcom/perm/kate/GroupLinksActivity$2;Ljava/util/ArrayList;Lcom/perm/kate/api/Link;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 113
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method
