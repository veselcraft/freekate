.class Lcom/perm/kate/AudioFragment$7;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20

    move-object/from16 v0, p0

    .line 304
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v1, v1, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/perm/kate/api/Audio;

    .line 305
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1200(Lcom/perm/kate/AudioFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audios"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 309
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_4

    .line 310
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1300(Lcom/perm/kate/AudioFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/AudioFragment;->access$900(Lcom/perm/kate/AudioFragment;J)V

    goto/16 :goto_4

    .line 312
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$100(Lcom/perm/kate/AudioFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v2, v3, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/AudioFragment;->access$1100(Lcom/perm/kate/AudioFragment;J)V

    goto/16 :goto_4

    .line 319
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    cmp-long v10, v1, v4

    if-gez v10, :cond_4

    .line 320
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$1400(Lcom/perm/kate/AudioFragment;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v4, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v4}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v4, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    const/4 v9, 0x1

    :cond_3
    move v4, v1

    move/from16 v19, v4

    move v6, v9

    const/16 v18, 0x1

    goto :goto_3

    .line 325
    :cond_4
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$500(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 326
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$1500(Lcom/perm/kate/AudioFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v1, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x2

    cmp-long v10, v1, v4

    if-eqz v10, :cond_5

    const-wide/16 v4, -0x3

    cmp-long v10, v1, v4

    if-eqz v10, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 329
    :goto_0
    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$1500(Lcom/perm/kate/AudioFragment;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    iget-wide v4, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    move v4, v1

    move v6, v2

    const/16 v18, 0x1

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_2
    const/16 v19, 0x0

    .line 331
    :goto_3
    iget-object v1, v0, Lcom/perm/kate/AudioFragment$7;->this$0:Lcom/perm/kate/AudioFragment;

    move-object v7, v1

    iget-object v2, v1, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v5, v1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x1

    iget v10, v1, Lcom/perm/kate/AudioFragment;->source:I

    iget-wide v11, v1, Lcom/perm/kate/AudioFragment;->album_id:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v2 .. v19}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    :goto_4
    return-void
.end method
