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
    .param p1, "this$0"    # Lcom/perm/kate/DashConfigActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x1

    .line 69
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p3, v2, :cond_0

    .line 70
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    const v4, 0x7f0701d4

    .line 71
    invoke-virtual {v3, v4}, Lcom/perm/kate/DashConfigActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    const v3, 0x7f0700c4

    .line 72
    invoke-virtual {v2, v3}, Lcom/perm/kate/DashConfigActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v5

    .line 73
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07001d

    .line 75
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/DashConfigActivity$1$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/DashConfigActivity$1$1;-><init>(Lcom/perm/kate/DashConfigActivity$1;)V

    .line 76
    invoke-virtual {v2, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 89
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 92
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
