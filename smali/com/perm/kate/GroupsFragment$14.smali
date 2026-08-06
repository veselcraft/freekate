.class Lcom/perm/kate/GroupsFragment$14;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v6}, Lcom/perm/kate/GroupsFragment;->access$1800(Lcom/perm/kate/GroupsFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v4

    .line 344
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v6, v6, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    .line 346
    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v6, v6, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 347
    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v6, v6, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v7, v7, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 348
    .local v1, "group_id":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070173

    invoke-direct {v4, v6, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v4, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v4}, Lcom/perm/kate/GroupsFragment;->access$2500(Lcom/perm/kate/GroupsFragment;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701c5

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v6}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/GroupsFragment$14$1;

    invoke-direct {v7, p0, v2, v1}, Lcom/perm/kate/GroupsFragment$14$1;-><init>(Lcom/perm/kate/GroupsFragment$14;Ljava/util/ArrayList;Ljava/lang/Long;)V

    invoke-virtual {v4, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 369
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 370
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 371
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    move v4, v5

    .line 372
    goto :goto_0
.end method
