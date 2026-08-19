.class Lcom/perm/kate/AlbumCommentsActivity$11;
.super Ljava/lang/Object;
.source "AlbumCommentsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AlbumCommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AlbumCommentsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

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

    .line 321
    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$1100(Lcom/perm/kate/AlbumCommentsActivity;)I

    move-result p2

    if-nez p2, :cond_2

    .line 322
    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I

    .line 323
    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p2}, Lcom/perm/kate/AlbumCommentsActivity;->access$1300(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 324
    iget-object p2, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 329
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity$11;->this$0:Lcom/perm/kate/AlbumCommentsActivity;

    invoke-static {p1}, Lcom/perm/kate/AlbumCommentsActivity;->access$1400(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
