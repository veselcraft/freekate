.class Lcom/perm/kate/SuggestionsFriendsFragment$2;
.super Ljava/lang/Thread;
.source "SuggestionsFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SuggestionsFriendsFragment;->refreshInThread()V
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
    .line 75
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 78
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const-string v2, "online, photo_100"

    iget-object v3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$200(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SuggestionsFriendsFragment$2;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getSuggestions(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
