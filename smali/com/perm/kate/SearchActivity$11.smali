.class Lcom/perm/kate/SearchActivity$11;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const v2, 0x7f09019e

    move-object/from16 v3, p2

    .line 530
    invoke-virtual {v3, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_2

    .line 531
    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .line 532
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v2, 0x1

    .line 533
    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v2, 0x4

    .line 534
    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 536
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    move-object v11, v1

    .line 537
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4900(Lcom/perm/kate/SearchActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "video_id"

    .line 539
    invoke-virtual {v1, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "owner_id"

    .line 540
    invoke-virtual {v1, v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 541
    iget-object v2, v0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 542
    iget-object v1, v0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 544
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v14}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    goto :goto_0

    .line 546
    :cond_1
    new-instance v3, Lcom/perm/kate/VideoMenu;

    iget-object v1, v0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x0

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$5000(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/VideoMenuCallback;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v3 .. v17}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
