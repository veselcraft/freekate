.class Lcom/perm/kate/NewsFragment$12;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 561
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$12;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v2

    if-nez v2, :cond_0

    .line 566
    const/4 v2, 0x0

    .line 576
    :goto_0
    return v2

    .line 567
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/NewsItemTag;

    .line 568
    .local v0, "tag":Lcom/perm/kate/NewsItemTag;
    if-eqz v0, :cond_1

    .line 569
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$12;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v0}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 570
    :catch_0
    move-exception v1

    .line 571
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 572
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 573
    instance-of v2, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v2, :cond_1

    .line 574
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_1
.end method
