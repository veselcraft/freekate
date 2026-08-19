.class Lcom/perm/kate/FriendsFragment$8;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_3

    .line 417
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p3, p3, Lcom/perm/kate/FriendsFragment;->current_filter:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    .line 420
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/FriendsFragment;->access$900(Lcom/perm/kate/FriendsFragment;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 421
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/FriendsFragment;->access$1000(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/HeaderViewListAdapter;

    .line 422
    invoke-virtual {p2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/CursorAdapter;

    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/FriendsFragment;->access$1000(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/CursorAdapter;

    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 425
    :goto_0
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/FriendsFragment;->access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 426
    iget-object p2, p0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/FriendsFragment;->access$1100(Lcom/perm/kate/FriendsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method
