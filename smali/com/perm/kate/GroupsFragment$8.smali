.class Lcom/perm/kate/GroupsFragment$8;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 213
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

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
    .line 216
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v2, v2, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v2, v2, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v2, v2, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    iget-object v3, v3, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 220
    .local v1, "group_id":Ljava/lang/Long;
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$1100(Lcom/perm/kate/GroupsFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$1400(Lcom/perm/kate/GroupsFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 223
    const-string v2, "repost_post_id"

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/GroupsFragment;->access$1500(Lcom/perm/kate/GroupsFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 224
    const-string v2, "repost_post_owner_id"

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/GroupsFragment;->access$1600(Lcom/perm/kate/GroupsFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    const-string v2, "wall_object"

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v3}, Lcom/perm/kate/GroupsFragment;->access$1700(Lcom/perm/kate/GroupsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 227
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 228
    .end local v0    # "data":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {v2}, Lcom/perm/kate/GroupsFragment;->access$1800(Lcom/perm/kate/GroupsFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/GroupsFragment;->access$1900(Lcom/perm/kate/GroupsFragment;J)V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment$8;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
