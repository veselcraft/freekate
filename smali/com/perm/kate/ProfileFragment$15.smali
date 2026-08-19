.class Lcom/perm/kate/ProfileFragment$15;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$15;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 958
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$15;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$15;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2300(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->showAllPhotos(Landroid/app/Activity;Ljava/lang/String;)V

    .line 959
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$15;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "all_photos"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    return-void
.end method
