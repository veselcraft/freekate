.class Lcom/perm/kate/CommentsSearchActivity$12;
.super Ljava/lang/Object;
.source "CommentsSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/CommentsSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CommentsSearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity$12;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    const/4 p1, 0x1

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 576
    iget-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$12;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsSearchActivity;->access$100(Lcom/perm/kate/CommentsSearchActivity;)I

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CommentsSearchActivity"

    const-string p3, "Loading more"

    .line 577
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$12;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/CommentsSearchActivity;->access$102(Lcom/perm/kate/CommentsSearchActivity;I)I

    .line 579
    iget-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$12;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-static {p2}, Lcom/perm/kate/CommentsSearchActivity;->access$1800(Lcom/perm/kate/CommentsSearchActivity;)V

    .line 580
    iget-object p2, p0, Lcom/perm/kate/CommentsSearchActivity$12;->this$0:Lcom/perm/kate/CommentsSearchActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
