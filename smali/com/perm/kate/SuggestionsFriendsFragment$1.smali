.class Lcom/perm/kate/SuggestionsFriendsFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$1;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$1;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$000(Lcom/perm/kate/SuggestionsFriendsFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$1;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$100(Lcom/perm/kate/SuggestionsFriendsFragment;)V

    return-void
.end method
