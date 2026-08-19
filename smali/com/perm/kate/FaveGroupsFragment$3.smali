.class Lcom/perm/kate/FaveGroupsFragment$3;
.super Ljava/lang/Object;
.source "FaveGroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 102
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 105
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-static {p2}, Lcom/perm/kate/FaveGroupsFragment;->access$300(Lcom/perm/kate/FaveGroupsFragment;)Landroid/database/Cursor;

    move-result-object p2

    const-string p3, "_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lcom/perm/kate/FaveGroupsFragment$3;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    return-void
.end method
