.class Lcom/perm/kate/FaveUsersFragment$10;
.super Ljava/lang/Object;
.source "FaveUsersFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveUsersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveUsersFragment;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/perm/kate/FaveUsersFragment$10;->this$0:Lcom/perm/kate/FaveUsersFragment;

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

    if-eqz p1, :cond_2

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/perm/kate/FaveUsersFragment$10;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p3}, Lcom/perm/kate/FaveUsersFragment;->access$100(Lcom/perm/kate/FaveUsersFragment;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment$10;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p2}, Lcom/perm/kate/FaveUsersFragment;->access$1100(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/CursorAdapter;

    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 257
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment$10;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p2}, Lcom/perm/kate/FaveUsersFragment;->access$1200(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 258
    iget-object p2, p0, Lcom/perm/kate/FaveUsersFragment$10;->this$0:Lcom/perm/kate/FaveUsersFragment;

    invoke-static {p2}, Lcom/perm/kate/FaveUsersFragment;->access$1200(Lcom/perm/kate/FaveUsersFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
