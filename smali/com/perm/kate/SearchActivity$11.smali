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
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
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
    .line 512
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, [Ljava/lang/Object;

    .line 513
    .local v12, "tags":[Ljava/lang/Object;
    const v0, 0x7f0e028f

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Video;

    .line 514
    .local v10, "video":Lcom/perm/kate/api/Video;
    if-eqz v12, :cond_1

    array-length v0, v12

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 515
    const/4 v0, 0x0

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 516
    .local v2, "vid":J
    const/4 v0, 0x1

    aget-object v0, v12, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 517
    .local v4, "oid":J
    const/4 v0, 0x4

    aget-object v8, v12, v0

    check-cast v8, Ljava/lang/Boolean;

    .line 518
    .local v8, "user_likes":Ljava/lang/Boolean;
    if-nez v8, :cond_0

    .line 519
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v11, "i":Landroid/content/Intent;
    const-string v0, "video_id"

    invoke-virtual {v11, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 523
    const-string v0, "owner_id"

    invoke-virtual {v11, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 524
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v11}, Lcom/perm/kate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 525
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SearchActivity;->finish()V

    .line 527
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v10}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 531
    .end local v2    # "vid":J
    .end local v4    # "oid":J
    .end local v8    # "user_likes":Ljava/lang/Boolean;
    .end local v11    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 529
    .restart local v2    # "vid":J
    .restart local v4    # "oid":J
    .restart local v8    # "user_likes":Ljava/lang/Boolean;
    :cond_2
    new-instance v0, Lcom/perm/kate/VideoMenu;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/SearchActivity$11;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v7}, Lcom/perm/kate/SearchActivity;->access$4900(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/VideoMenuCallback;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V

    goto :goto_0
.end method
