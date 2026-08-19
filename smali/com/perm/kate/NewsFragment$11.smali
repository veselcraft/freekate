.class Lcom/perm/kate/NewsFragment$11;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .line 567
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-nez p1, :cond_0

    return-void

    .line 570
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 571
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string p3, "ads"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 572
    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string p3, "post"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 575
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    goto :goto_1

    .line 573
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide p2, p1, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object v5, p1, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/NewsFragment;->access$900(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_3
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 579
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 580
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 581
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_4

    .line 582
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_4
    :goto_1
    return-void
.end method
