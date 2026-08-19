.class Lcom/perm/kate/GroupsFragment$11;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    .line 334
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1600(Lcom/perm/kate/GroupsFragment;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_1

    return p2

    .line 338
    :cond_1
    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 339
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    const-string p3, "_id"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    return p2

    .line 342
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f01db

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object p3, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p3}, Lcom/perm/kate/GroupsFragment;->access$000(Lcom/perm/kate/GroupsFragment;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 345
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f0221

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/GroupsFragment$11;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance v0, Lcom/perm/kate/GroupsFragment$11$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/GroupsFragment$11$1;-><init>(Lcom/perm/kate/GroupsFragment$11;Ljava/util/ArrayList;Ljava/lang/Long;)V

    invoke-virtual {p3, p4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 362
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method
