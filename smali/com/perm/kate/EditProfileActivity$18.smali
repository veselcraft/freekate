.class Lcom/perm/kate/EditProfileActivity$18;
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

    .line 582
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 592
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 593
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 585
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 586
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/EditProfileActivity;->access$400(Lcom/perm/kate/EditProfileActivity;Z)V

    .line 587
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$18;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-static {p1}, Lcom/perm/kate/EditProfileActivity;->access$3300(Lcom/perm/kate/EditProfileActivity;)V

    return-void
.end method
