.class Lcom/perm/kate/DocsFragment$5;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DocsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
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
    .line 146
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v0, 0x7f0e0067

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 147
    .local v9, "doc_id":Ljava/lang/Long;
    const v0, 0x7f0e01a7

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "url":Ljava/lang/String;
    const v0, 0x7f0e0218

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "title":Ljava/lang/String;
    const v0, 0x7f0e0216

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "ext":Ljava/lang/String;
    const v0, 0x7f0e021a

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 151
    .local v8, "preview":Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-boolean v0, v0, Lcom/perm/kate/DocsFragment;->select_mode:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v10, "i":Landroid/content/Intent;
    const-string v0, "doc_id"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    const-string v0, "owner_id"

    iget-object v4, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v4, v4, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v10, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v4, v10}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 160
    .end local v10    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Lcom/perm/kate/DocClickHelper;

    iget-object v4, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BaseActivity;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/DocsFragment$5;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v6, v6, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/DocClickHelper;->click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_0
.end method
