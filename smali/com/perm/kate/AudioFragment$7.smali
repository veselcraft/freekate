.class Lcom/perm/kate/AudioFragment$7;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
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
    .line 251
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v2, v2, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Audio;

    .line 252
    .local v3, "a":Lcom/perm/kate/api/Audio;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v11, "i":Landroid/content/Intent;
    const-string v2, "audio_id"

    iget-wide v8, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v11, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 255
    const-string v2, "owner_id"

    iget-wide v8, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v11, v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v11}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 273
    .end local v11    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$700(Lcom/perm/kate/AudioFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v8, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v8, v9}, Lcom/perm/kate/AudioFragment;->access$500(Lcom/perm/kate/AudioFragment;J)V

    goto :goto_0

    .line 263
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v2, v8, v14

    if-gez v2, :cond_3

    .line 264
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v5}, Lcom/perm/kate/AudioFragment;->access$800(Lcom/perm/kate/AudioFragment;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v7}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    mul-long/2addr v8, v14

    invoke-virtual {v2, v5, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v12

    .line 265
    .local v12, "is_editor":Z
    move v4, v12

    .line 266
    .local v4, "show_delete":Z
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v8, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v14, -0x1

    cmp-long v2, v8, v14

    if-eqz v2, :cond_2

    const/4 v6, 0x1

    .line 271
    .end local v12    # "is_editor":Z
    .local v6, "show_delete_from_album":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v5, v5, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget v10, v10, Lcom/perm/kate/AudioFragment;->source:I

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V

    goto :goto_0

    .line 266
    .end local v6    # "show_delete_from_album":Z
    .restart local v12    # "is_editor":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 268
    .end local v4    # "show_delete":Z
    .end local v12    # "is_editor":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$900(Lcom/perm/kate/AudioFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v8, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v14, -0x2

    cmp-long v2, v8, v14

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v8, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v14, -0x3

    cmp-long v2, v8, v14

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    .line 269
    .restart local v4    # "show_delete":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$900(Lcom/perm/kate/AudioFragment;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v8, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v14, -0x1

    cmp-long v2, v8, v14

    if-eqz v2, :cond_5

    const/4 v6, 0x1

    .restart local v6    # "show_delete_from_album":Z
    :goto_3
    goto :goto_1

    .line 268
    .end local v4    # "show_delete":Z
    .end local v6    # "show_delete_from_album":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 269
    .restart local v4    # "show_delete":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3
.end method
