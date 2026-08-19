.class Lcom/perm/kate/SearchParamsActivity$11;
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

    .line 493
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 524
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 498
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 500
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 501
    sget-object v0, Lcom/perm/kate/SearchParamsActivity;->countries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 502
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    .line 503
    sput-boolean v1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    .line 504
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v1

    sput p1, Lcom/perm/kate/SearchParamsActivity;->c2:I

    goto :goto_0

    .line 505
    :cond_0
    sget-boolean p1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez p1, :cond_1

    .line 506
    sput-boolean v1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    .line 508
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 509
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$11;->this$0:Lcom/perm/kate/SearchParamsActivity;

    new-instance v0, Lcom/perm/kate/SearchParamsActivity$11$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchParamsActivity$11$1;-><init>(Lcom/perm/kate/SearchParamsActivity$11;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
