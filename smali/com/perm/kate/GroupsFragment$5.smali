.class Lcom/perm/kate/GroupsFragment$5;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 211
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object p1, p1, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 212
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p2}, Lcom/perm/kate/GroupsFragment;->access$900(Lcom/perm/kate/GroupsFragment;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p2}, Lcom/perm/kate/GroupsFragment;->access$1200(Lcom/perm/kate/GroupsFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p2}, Lcom/perm/kate/GroupsFragment;->access$1600(Lcom/perm/kate/GroupsFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 221
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/perm/kate/GroupsFragment;->access$1700(Lcom/perm/kate/GroupsFragment;J)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    goto :goto_1

    .line 213
    :cond_3
    :goto_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "group_id"

    .line 214
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 215
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1300(Lcom/perm/kate/GroupsFragment;)J

    move-result-wide p3

    const-string p1, "repost_post_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1400(Lcom/perm/kate/GroupsFragment;)J

    move-result-wide p3

    const-string p1, "repost_post_owner_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$1500(Lcom/perm/kate/GroupsFragment;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "wall_object"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 219
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$5;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
