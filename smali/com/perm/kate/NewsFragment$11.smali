.class Lcom/perm/kate/NewsFragment$11;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 541
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 542
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v0, :cond_1

    .line 557
    .end local v0    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_0
    :goto_0
    return-void

    .line 544
    .restart local v0    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_1
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 545
    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v4, v0, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/NewsFragment;->access$800(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    .end local v0    # "tag":Lcom/perm/kate/NewsItemTag;
    :catch_0
    move-exception v1

    .line 552
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 553
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 554
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_0

    .line 555
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_0

    .line 548
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    goto :goto_0

    .line 550
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$11;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
