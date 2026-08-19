.class Lcom/perm/kate/DocsFragment$5;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9

    const p1, 0x7f090008

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    const p3, 0x7f09000a

    .line 168
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Ljava/lang/String;

    const p3, 0x7f090011

    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    const p3, 0x7f09000b

    .line 170
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    const p3, 0x7f090016

    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    .line 172
    iget-object p2, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-boolean p3, p2, Lcom/perm/kate/DocsFragment;->select_mode:Z

    if-eqz p3, :cond_0

    .line 173
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "doc_id"

    .line 174
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 175
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object p1, p1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    const-string p3, "owner_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 177
    iget-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 180
    :cond_0
    new-instance v0, Lcom/perm/kate/DocClickHelper;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/BaseActivity;

    const/4 p3, 0x0

    invoke-direct {v0, p2, p3}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object p1, p1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/DocClickHelper;->click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method
