.class Lcom/perm/kate/PhotosActivity$12;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 617
    if-nez p4, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    add-int v2, p2, p3

    add-int/lit8 v3, p4, -0x2

    if-lt v2, v3, :cond_2

    move v0, v1

    .line 620
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v2}, Lcom/perm/kate/PhotosActivity;->access$200(Lcom/perm/kate/PhotosActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 621
    const-string v2, "Kate.PhotosActivity"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/PhotosActivity;->access$202(Lcom/perm/kate/PhotosActivity;I)I

    .line 623
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v2}, Lcom/perm/kate/PhotosActivity;->access$1200(Lcom/perm/kate/PhotosActivity;)V

    .line 624
    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$12;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/PhotosActivity;->showProgressBar(Z)V

    goto :goto_0

    .line 619
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 631
    return-void
.end method
