.class Lcom/perm/kate/ProfileFragment$17;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 943
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 947
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v2, v2, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 948
    const-string v1, "com.perm.kate.user_videos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 949
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 950
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 951
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v2, "user_videos"

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileFragment;->access$1900(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 952
    return-void
.end method
