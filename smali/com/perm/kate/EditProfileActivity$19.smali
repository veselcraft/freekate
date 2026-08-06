.class Lcom/perm/kate/EditProfileActivity$19;
.super Ljava/lang/Object;
.source "EditProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditProfileActivity;->onCancelRequestInUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$19;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 598
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$19;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$3102(Lcom/perm/kate/EditProfileActivity;Ljava/lang/Long;)Ljava/lang/Long;

    .line 599
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$19;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$3400(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$19;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0}, Lcom/perm/kate/EditProfileActivity;->access$3500(Lcom/perm/kate/EditProfileActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$19;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v1, 0x7f0704d2

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->displayToast(I)V

    .line 602
    return-void
.end method
