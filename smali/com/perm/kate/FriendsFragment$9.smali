.class Lcom/perm/kate/FriendsFragment$9;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 425
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 431
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$1000(Lcom/perm/kate/FriendsFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 436
    .local v0, "hlva":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 439
    .end local v0    # "hlva":Landroid/widget/HeaderViewListAdapter;
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$1200(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$1200(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$9;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 440
    :cond_3
    const/16 v1, 0x8

    goto :goto_2
.end method
