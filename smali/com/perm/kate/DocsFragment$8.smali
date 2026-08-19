.class Lcom/perm/kate/DocsFragment$8;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    const v2, 0x7f090008

    .line 315
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const v3, 0x7f09000a

    .line 316
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    const v3, 0x7f090011

    .line 317
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    const v3, 0x7f09000b

    .line 318
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    const v3, 0x7f090016

    .line 319
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 320
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 321
    iget-object v1, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-gez v1, :cond_0

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v4, v4, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v7

    invoke-virtual {v1, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v12, 0x1

    .line 322
    :goto_1
    new-instance v4, Lcom/perm/kate/DocClickHelper;

    iget-object v1, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v3, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v3}, Lcom/perm/kate/DocsFragment;->access$900(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/perm/kate/DocClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, v0, Lcom/perm/kate/DocsFragment$8;->this$0:Lcom/perm/kate/DocsFragment;

    iget-object v1, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v14}, Lcom/perm/kate/DocClickHelper;->createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
