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
    .param p1, "this$0"    # Lcom/perm/kate/GroupLinksActivity;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

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

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Link;

    .line 93
    .local v1, "link":Lcom/perm/kate/api/Link;
    if-nez v1, :cond_0

    .line 94
    const/4 v4, 0x0

    .line 115
    :goto_0
    return v4

    .line 95
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07018d

    invoke-direct {v5, v6, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070084

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/perm/kate/GroupLinksActivity$2;->this$0:Lcom/perm/kate/GroupLinksActivity;

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/GroupLinksActivity$2$1;

    invoke-direct {v7, p0, v2, v1}, Lcom/perm/kate/GroupLinksActivity$2$1;-><init>(Lcom/perm/kate/GroupLinksActivity$2;Ljava/util/ArrayList;Lcom/perm/kate/api/Link;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 112
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 113
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
