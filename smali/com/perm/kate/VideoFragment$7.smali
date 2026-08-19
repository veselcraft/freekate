.class Lcom/perm/kate/VideoFragment$7;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$7;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 291
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$7;->this$0:Lcom/perm/kate/VideoFragment;

    add-int/2addr p2, p3

    invoke-static {p1, p2, p4}, Lcom/perm/kate/VideoFragment;->access$900(Lcom/perm/kate/VideoFragment;II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
