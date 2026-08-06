.class Lcom/perm/kate/ProfileInfoFragment$28;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$friend_status:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$28;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput p2, p0, Lcom/perm/kate/ProfileInfoFragment$28;->val$friend_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$28;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$28;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/ProfileInfoFragment$28;->val$friend_status:I

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->access$2500(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;I)V

    .line 1080
    return-void
.end method
