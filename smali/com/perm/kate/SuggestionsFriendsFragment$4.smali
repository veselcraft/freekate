.class Lcom/perm/kate/SuggestionsFriendsFragment$4;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SuggestionsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$600(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$4;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$700(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 130
    :cond_0
    return-void

    .line 129
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
