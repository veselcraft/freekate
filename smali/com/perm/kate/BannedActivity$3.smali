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
    .param p1, "this$0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 99
    iget-object v5, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v5}, Lcom/perm/kate/BannedActivity;->access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BannedAdapter$BannItem;

    .line 100
    .local v1, "item":Lcom/perm/kate/BannedAdapter$BannItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget v5, v1, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    if-nez v5, :cond_0

    .line 102
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070202

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_0
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070084

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "title":Ljava/lang/String;
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 108
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/BannedActivity$3$1;

    invoke-direct {v7, p0, v2, v1}, Lcom/perm/kate/BannedActivity$3$1;-><init>(Lcom/perm/kate/BannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/BannedAdapter$BannItem;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 124
    .local v4, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 125
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 127
    return-void

    .line 104
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_0
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070344

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
