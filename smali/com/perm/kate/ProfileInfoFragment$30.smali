.class Lcom/perm/kate/ProfileInfoFragment$30;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$fave_add_user_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$30;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$30;->val$fave_add_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1137
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$30;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v2, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$30;->val$fave_add_user_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/perm/kate/session/Session;->faveAddPage(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
