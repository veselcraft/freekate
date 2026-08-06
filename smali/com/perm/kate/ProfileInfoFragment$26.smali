.class Lcom/perm/kate/ProfileInfoFragment$26;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->getIsFriendInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1051
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileInfoFragment;->access$2400(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$26;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->isFriend(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1052
    return-void
.end method
