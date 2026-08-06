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
    .param p1, "this$0"    # Lcom/perm/kate/EditProfileActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    .line 673
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 674
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 644
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditProfileActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 645
    check-cast v0, Ljava/util/ArrayList;

    .line 646
    .local v0, "new_countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Country;>;"
    if-eqz v0, :cond_1

    .line 647
    sget-object v1, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 648
    sget-object v1, Lcom/perm/kate/EditProfileActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 649
    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v1, :cond_2

    .line 650
    sput-boolean v3, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    .line 651
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/perm/kate/EditProfileActivity;->c2:I

    .line 655
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v1}, Lcom/perm/kate/EditProfileActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    iget-object v1, p0, Lcom/perm/kate/EditProfileActivity$22;->this$0:Lcom/perm/kate/EditProfileActivity;

    new-instance v2, Lcom/perm/kate/EditProfileActivity$22$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/EditProfileActivity$22$1;-><init>(Lcom/perm/kate/EditProfileActivity$22;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/EditProfileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 668
    :cond_1
    return-void

    .line 652
    :cond_2
    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->countries_loaded:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    if-nez v1, :cond_0

    .line 653
    sput-boolean v3, Lcom/perm/kate/EditProfileActivity;->full_countries_loaded:Z

    goto :goto_0
.end method
