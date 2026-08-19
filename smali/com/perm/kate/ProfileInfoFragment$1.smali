.class Lcom/perm/kate/ProfileInfoFragment$1;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$1;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$1;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment$1;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->access$100(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method
