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
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 712
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 713
    .local v0, "new_cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v1}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$25;->this$0:Lcom/perm/kate/EditProfileActivity;

    new-instance v2, Lcom/perm/kate/EditProfileActivity$25$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/EditProfileActivity$25$1;-><init>(Lcom/perm/kate/EditProfileActivity$25;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    :cond_0
    return-void
.end method
