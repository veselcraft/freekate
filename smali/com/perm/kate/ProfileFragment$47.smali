.class Lcom/perm/kate/ProfileFragment$47;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$friend_status:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;I)V
    .locals 0

    .line 1766
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    iput p2, p0, Lcom/perm/kate/ProfileFragment$47;->val$friend_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1769
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$47;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/ProfileFragment$47;->val$friend_status:I

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileFragment;->access$4800(Lcom/perm/kate/ProfileFragment;Landroid/view/View;I)V

    return-void
.end method
