.class Lcom/perm/kate/EditProfileActivity$25;
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

    .line 713
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 717
    check-cast p1, Ljava/util/ArrayList;

    .line 718
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    new-instance v1, Lcom/perm/kate/EditProfileActivity$25$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/EditProfileActivity$25$1;-><init>(Lcom/perm/kate/EditProfileActivity$25;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
