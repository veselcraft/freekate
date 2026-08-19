.class Lcom/perm/kate/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseFragment;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/perm/kate/BaseFragment$1;->this$0:Lcom/perm/kate/BaseFragment;

    iput-object p2, p0, Lcom/perm/kate/BaseFragment$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$1;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/BaseFragment$1;->this$0:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/BaseFragment$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
