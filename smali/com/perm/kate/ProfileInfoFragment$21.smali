.class Lcom/perm/kate/ProfileInfoFragment$21;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 964
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$21;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$21;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$21;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->access$2200(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;)V

    .line 968
    return-void
.end method
