.class Lcom/perm/kate/DocsFragment$8;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 291
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 18
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 294
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f0e0067

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 295
    .local v2, "doc_id":Ljava/lang/Long;
    const v3, 0x7f0e01a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 296
    .local v8, "url":Ljava/lang/String;
    const v3, 0x7f0e0218

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 297
    .local v9, "title":Ljava/lang/String;
    const v3, 0x7f0e0216

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 298
    .local v10, "ext":Ljava/lang/String;
    const v3, 0x7f0e021a

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 299
    .local v13, "preview":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 300
    .local v14, "account_id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v3, v3, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v14

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v3, v3, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v5, v5, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v6, v6, v16

    invoke-virtual {v3, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v11, 0x1

    .line 301
    .local v11, "can_edit_delete":Z
    :goto_0
    new-instance v3, Lcom/perm/kate/DocClickHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v5}, Lcom/perm/kate/DocsFragment;->access$600(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v6, v6, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v13}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    .line 300
    .end local v11    # "can_edit_delete":Z
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method
