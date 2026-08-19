.class Lcom/perm/kate/SuggestionsFriendsFragment$4;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

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

    .line 127
    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$600(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/lang/CharSequence;)V

    .line 128
    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 129
    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p2}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method
