.class Lcom/perm/kate/ProfileFragment$48;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileFragment;->displayFriendStatusOnUiThread2(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;

.field final synthetic val$friend_status:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    iput p2, p0, Lcom/perm/kate/ProfileFragment$48;->val$friend_status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$48;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/ProfileFragment$48;->val$friend_status:I

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ProfileFragment;->access$4800(Lcom/perm/kate/ProfileFragment;Landroid/view/View;I)V

    .line 1717
    return-void
.end method
