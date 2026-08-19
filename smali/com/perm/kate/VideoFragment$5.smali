.class Lcom/perm/kate/VideoFragment$5;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 19

    move-object/from16 v0, p0

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 209
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 210
    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v3, 0x1

    .line 211
    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v3, 0x4

    .line 212
    aget-object v1, v1, v3

    move-object v12, v1

    check-cast v12, Ljava/lang/Boolean;

    .line 213
    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$500(Lcom/perm/kate/VideoFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1, v6, v7, v8, v9}, Lcom/perm/kate/VideoFragment;->access$600(Lcom/perm/kate/VideoFragment;JJ)V

    return-void

    .line 218
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v3

    const-wide/16 v10, 0x0

    cmp-long v1, v3, v10

    if-gez v1, :cond_1

    .line 219
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v2}, Lcom/perm/kate/VideoFragment;->access$700(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, -0x1

    iget-object v5, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v5}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v10

    mul-long v10, v10, v3

    invoke-virtual {v1, v2, v10, v11}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v2

    .line 220
    :cond_1
    new-instance v4, Lcom/perm/kate/VideoMenu;

    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v3, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v5, v3, Lcom/perm/kate/VideoFragment;->videoMenuCallback:Lcom/perm/kate/VideoMenuCallback;

    invoke-direct {v4, v1, v3, v5}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$100(Lcom/perm/kate/VideoFragment;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v1, v0, Lcom/perm/kate/VideoFragment$5;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$800(Lcom/perm/kate/VideoFragment;)Z

    move-result v11

    const/4 v13, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
