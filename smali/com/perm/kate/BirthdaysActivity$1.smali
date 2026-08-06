.class Lcom/perm/kate/BirthdaysActivity$1;
.super Ljava/lang/Object;
.source "BirthdaysActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BirthdaysActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BirthdaysActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BirthdaysActivity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "str_uid":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 62
    const/4 v4, 0x0

    .line 85
    :goto_0
    return v4

    .line 63
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070202

    invoke-direct {v5, v6, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701d6

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v6}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/BirthdaysActivity$1$1;

    invoke-direct {v7, p0, v1, v2}, Lcom/perm/kate/BirthdaysActivity$1$1;-><init>(Lcom/perm/kate/BirthdaysActivity$1;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 82
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 83
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
