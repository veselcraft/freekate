.class Lcom/perm/kate/ProfileInfoFragment$18;
.super Ljava/lang/Thread;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->addFriend(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$18;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$18;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 909
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$18;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, v1, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment$18;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment$18;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v3}, Lcom/perm/kate/ProfileInfoFragment;->access$1800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment$18;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v4}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->addFriend(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 910
    return-void
.end method
