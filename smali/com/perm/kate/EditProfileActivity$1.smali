.class Lcom/perm/kate/EditProfileActivity$1;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->setEnabledButtonsInUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$1;->this$0:Lcom/perm/kate/EditProfileActivity;

    iput-boolean p2, p0, Lcom/perm/kate/EditProfileActivity$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$1;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$000(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/EditProfileActivity$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$1;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$100(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perm/kate/EditProfileActivity$1;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 147
    return-void
.end method
