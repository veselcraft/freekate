.class Lcom/perm/kate/ProfileFragment$14;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$14;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 950
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$14;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$2300(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$14;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-wide/16 v1, -0x2328

    invoke-static {p1, v1, v2, v0}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    .line 951
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$14;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "user_photos"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    return-void
.end method
