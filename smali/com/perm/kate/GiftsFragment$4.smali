.class Lcom/perm/kate/GiftsFragment$4;
.super Ljava/lang/Object;
.source "GiftsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GiftsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GiftsFragment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

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

    .line 154
    iget-object p2, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p2}, Lcom/perm/kate/GiftsFragment;->access$400(Lcom/perm/kate/GiftsFragment;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Kate.GiftsFragment"

    const-string p3, "Loading more"

    .line 155
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p2, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/GiftsFragment;->access$402(Lcom/perm/kate/GiftsFragment;I)I

    .line 157
    iget-object p2, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p2}, Lcom/perm/kate/GiftsFragment;->access$700(Lcom/perm/kate/GiftsFragment;)V

    .line 158
    iget-object p2, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/perm/kate/GiftsFragment$4;->this$0:Lcom/perm/kate/GiftsFragment;

    invoke-static {p1}, Lcom/perm/kate/GiftsFragment;->access$800(Lcom/perm/kate/GiftsFragment;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
