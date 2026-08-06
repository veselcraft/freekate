.class Lcom/perm/kate/ProfileInfoFragment$32;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->faveRemoveUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$32;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$32;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1151
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$32;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$32;->val$fave_remove_user_callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment$32;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v4}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/session/Session;->faveRemoveUser(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1152
    return-void
.end method
