.class Lcom/perm/kate/FaveGroupsFragment$5;
.super Ljava/lang/Object;
.source "FaveGroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 130
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p2}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p2

    const-string p3, "_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 131
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f01db

    const/4 p5, 0x2

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f029b

    const/4 p5, 0x3

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/perm/kate/FaveGroupsFragment$5;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p4

    invoke-direct {p3, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance p5, Lcom/perm/kate/FaveGroupsFragment$5$1;

    invoke-direct {p5, p0, p2, p1}, Lcom/perm/kate/FaveGroupsFragment$5$1;-><init>(Lcom/perm/kate/FaveGroupsFragment$5;Ljava/util/ArrayList;Ljava/lang/Long;)V

    invoke-virtual {p3, p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 149
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p2
.end method
