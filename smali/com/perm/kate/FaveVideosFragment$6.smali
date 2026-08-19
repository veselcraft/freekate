.class Lcom/perm/kate/FaveVideosFragment$6;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$6;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    if-lt p2, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$6;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveVideosFragment;->access$400(Lcom/perm/kate/FaveVideosFragment;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$6;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FaveVideosFragment;->loadMore()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
