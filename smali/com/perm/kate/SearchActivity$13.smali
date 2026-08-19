.class Lcom/perm/kate/SearchActivity$13;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 575
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5200(Lcom/perm/kate/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->None:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_1

    return-void

    .line 579
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Audio:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_2

    return-void

    .line 581
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->DialogsSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq p1, v0, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Dialogs:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_5

    :cond_4
    return-void

    :cond_5
    if-nez p4, :cond_6

    return-void

    :cond_6
    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    const/4 p1, 0x1

    if-lt p2, p4, :cond_7

    const/4 p2, 0x1

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_8

    .line 586
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2}, Lcom/perm/kate/SearchActivity;->access$5300(Lcom/perm/kate/SearchActivity;)I

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "Kate.SearchActivity"

    const-string p3, "Loading more"

    .line 587
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2, p1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 589
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2}, Lcom/perm/kate/SearchActivity;->access$5400(Lcom/perm/kate/SearchActivity;)V

    .line 590
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$13;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_8
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
