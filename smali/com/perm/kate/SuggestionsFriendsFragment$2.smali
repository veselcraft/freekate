.class Lcom/perm/kate/SuggestionsFriendsFragment$2;
.super Ljava/lang/Thread;
.source "SuggestionsFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v2}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$200(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "online, photo_100"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/perm/kate/session/Session;->getSuggestions(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
