.class Lcom/perm/kate/DashConfigActivity$1;
.super Ljava/lang/Object;
.source "DashConfigActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashConfigActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashConfigActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 68
    sget-object p1, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 69
    iget-object p3, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    const p4, 0x7f0f0230

    .line 70
    invoke-virtual {p3, p4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    aput-object p3, p1, p2

    iget-object p2, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    const p3, 0x7f0f010d

    .line 71
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 72
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-direct {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0f0030

    .line 74
    invoke-virtual {p2, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p4, Lcom/perm/kate/DashConfigActivity$1$1;

    invoke-direct {p4, p0}, Lcom/perm/kate/DashConfigActivity$1$1;-><init>(Lcom/perm/kate/DashConfigActivity$1;)V

    .line 75
    invoke-virtual {p2, p1, p4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
