.class Lcom/perm/kate/SearchParamsActivity$10;
.super Lcom/perm/kate/session/Callback;
.source "SearchParamsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchParamsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->showProgressBar(Z)V

    .line 478
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 479
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 451
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 452
    check-cast v0, Ljava/util/ArrayList;

    .line 453
    .local v0, "new_countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Country;>;"
    if-eqz v0, :cond_1

    .line 454
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 455
    sget-object v1, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 456
    sget-boolean v1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v1, :cond_2

    .line 457
    sput-boolean v3, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/perm/kate/SearchParamsActivity;->c2:I

    .line 462
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/SearchParamsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    new-instance v2, Lcom/perm/kate/SearchParamsActivity$10$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchParamsActivity$10$1;-><init>(Lcom/perm/kate/SearchParamsActivity$10;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 473
    :cond_1
    return-void

    .line 459
    :cond_2
    sget-boolean v1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v1, :cond_0

    .line 460
    sput-boolean v3, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    goto :goto_0
.end method
