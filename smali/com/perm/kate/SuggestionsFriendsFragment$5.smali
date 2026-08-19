.class Lcom/perm/kate/SuggestionsFriendsFragment$5;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$5;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    iput-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$5;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$5;->val$users:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$800(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V

    return-void
.end method
