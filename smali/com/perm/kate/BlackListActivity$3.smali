.class Lcom/perm/kate/BlackListActivity$3;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BlackListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BlackListActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 87
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070202

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070186

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "id_str":Ljava/lang/String;
    const v7, 0x7f0e0198

    invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "title":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 93
    .local v4, "uid":J
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-direct {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 94
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/BlackListActivity$3$1;

    invoke-direct {v9, p0, v2, v4, v5}, Lcom/perm/kate/BlackListActivity$3$1;-><init>(Lcom/perm/kate/BlackListActivity$3;Ljava/util/ArrayList;J)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 107
    .local v6, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 108
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 110
    return-void
.end method
