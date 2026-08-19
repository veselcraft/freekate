.class Lcom/perm/kate/NewsFragment$12;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$12;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 592
    :try_start_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 594
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/NewsItemTag;

    if-eqz p1, :cond_1

    .line 596
    iget-object p2, p0, Lcom/perm/kate/NewsFragment$12;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 598
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 599
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 601
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
