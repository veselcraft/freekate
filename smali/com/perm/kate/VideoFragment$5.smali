.class Lcom/perm/kate/VideoFragment$5;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
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
    .line 208
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, [Ljava/lang/Object;

    .line 209
    .local v15, "tags":[Ljava/lang/Object;
    if-eqz v15, :cond_0

    array-length v2, v15

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 210
    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 211
    .local v4, "video_id":J
    const/4 v2, 0x1

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 212
    .local v6, "owner_id":J
    const/4 v2, 0x4

    aget-object v10, v15, v2

    check-cast v10, Ljava/lang/Boolean;

    .line 213
    .local v10, "user_likes":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v2}, Lcom/perm/kate/VideoFragment;->access$600(Lcom/perm/kate/VideoFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v13, "i":Landroid/content/Intent;
    const-string v2, "video_id"

    invoke-virtual {v13, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 216
    const-string v2, "owner_id"

    invoke-virtual {v13, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v2}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v13}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v2}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 226
    .end local v4    # "video_id":J
    .end local v6    # "owner_id":J
    .end local v10    # "user_likes":Ljava/lang/Boolean;
    .end local v13    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 221
    .restart local v4    # "video_id":J
    .restart local v6    # "owner_id":J
    .restart local v10    # "user_likes":Ljava/lang/Boolean;
    :cond_1
    const/4 v14, 0x0

    .line 222
    .local v14, "is_admin":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v2}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    .line 223
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v3}, Lcom/perm/kate/VideoFragment;->access$700(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v11}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v16

    mul-long v8, v8, v16

    invoke-virtual {v2, v3, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v14

    .line 224
    :cond_2
    new-instance v2, Lcom/perm/kate/VideoMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v3}, Lcom/perm/kate/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v9, v9, Lcom/perm/kate/VideoFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    invoke-direct {v2, v3, v8, v9}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v3}, Lcom/perm/kate/VideoFragment;->access$200(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v9}, Lcom/perm/kate/VideoFragment;->access$800(Lcom/perm/kate/VideoFragment;)Z

    move-result v9

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V

    goto :goto_0
.end method
