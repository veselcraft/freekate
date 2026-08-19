.class Lcom/perm/kate/PhotosActivity$11;
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

    .line 646
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    const/4 p1, 0x1

    if-lt p2, p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 653
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p2, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget p2, p2, Lcom/perm/kate/PhotoList;->state:I

    if-nez p2, :cond_2

    const-string p2, "Kate.PhotosActivity"

    const-string p3, "Loading more"

    .line 654
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p3, p2, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    invoke-virtual {p3, p2}, Lcom/perm/kate/PhotoList;->loadMore(Lcom/perm/kate/BaseActivity;)V

    .line 656
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$11;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
