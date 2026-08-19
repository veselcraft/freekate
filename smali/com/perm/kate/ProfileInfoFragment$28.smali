.class Lcom/perm/kate/ProfileInfoFragment$28;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$friend_status:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;I)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$28;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput p2, p0, Lcom/perm/kate/ProfileInfoFragment$28;->val$friend_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$28;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/ProfileInfoFragment$28;->val$friend_status:I

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->access$2500(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;I)V

    return-void
.end method
