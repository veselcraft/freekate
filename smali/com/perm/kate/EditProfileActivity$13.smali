.class Lcom/perm/kate/EditProfileActivity$13;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->OnSavedInUiThread(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$13;->this$0:Lcom/perm/kate/EditProfileActivity;

    iput-object p2, p0, Lcom/perm/kate/EditProfileActivity$13;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$13;->val$text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$13;->this$0:Lcom/perm/kate/EditProfileActivity;

    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$13;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$13;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->setResult(I)V

    .line 515
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$13;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditProfileActivity;->finish()V

    .line 516
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$13;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v1, 0x7f0704cf

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->displayToast(I)V

    goto :goto_0
.end method
