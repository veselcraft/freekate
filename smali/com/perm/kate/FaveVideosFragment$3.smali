.class Lcom/perm/kate/FaveVideosFragment$3;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18

    move-object/from16 v0, p0

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 108
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x1

    .line 109
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v2, 0x4

    .line 110
    aget-object v1, v1, v2

    move-object v11, v1

    check-cast v11, Ljava/lang/Boolean;

    .line 111
    new-instance v3, Lcom/perm/kate/VideoMenu;

    iget-object v1, v0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, v0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveVideosFragment;->access$500(Lcom/perm/kate/FaveVideosFragment;)Lcom/perm/kate/VideoMenuCallback;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    iget-object v1, v0, Lcom/perm/kate/FaveVideosFragment$3;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-boolean v12, v1, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
