.class Lcom/perm/kate/ProfileFragment$21;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 1024
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$21;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1027
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$21;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1028
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$21;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v0, v0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v1, "owner_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1029
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$21;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1030
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$21;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "docs"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    return-void
.end method
