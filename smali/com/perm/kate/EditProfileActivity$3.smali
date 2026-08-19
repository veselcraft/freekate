.class Lcom/perm/kate/EditProfileActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "EditProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditProfileActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditProfileActivity;Landroid/app/Activity;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 223
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 224
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    const v0, 0x7f0f0553

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 214
    check-cast p1, Lcom/perm/kate/api/ProfileInfo;

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/EditProfileActivity;->access$300(Lcom/perm/kate/EditProfileActivity;Lcom/perm/kate/api/ProfileInfo;)V

    .line 217
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$3;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    :cond_0
    return-void
.end method
