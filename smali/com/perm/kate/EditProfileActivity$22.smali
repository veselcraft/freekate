.class Lcom/perm/kate/EditProfileActivity$22;
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

    .line 645
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 678
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 650
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 652
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 653
    sget-object v0, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 654
    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    .line 655
    sput-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    .line 656
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    sput p1, Lcom/perm/kate/EditProfileActivity;->c2:I

    goto :goto_0

    .line 657
    :cond_0
    sget-boolean p1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez p1, :cond_1

    .line 658
    sput-boolean v1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    .line 660
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 661
    iget-object p1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    new-instance v0, Lcom/perm/kate/EditProfileActivity$22$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/EditProfileActivity$22$1;-><init>(Lcom/perm/kate/EditProfileActivity$22;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
