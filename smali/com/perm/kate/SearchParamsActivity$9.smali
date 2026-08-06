.class Lcom/perm/kate/SearchParamsActivity$9;
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
    .line 429
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 433
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 434
    .local v0, "new_cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/SearchParamsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$9;->this$0:Lcom/perm/kate/SearchParamsActivity;

    new-instance v2, Lcom/perm/kate/SearchParamsActivity$9$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/SearchParamsActivity$9$1;-><init>(Lcom/perm/kate/SearchParamsActivity$9;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 444
    :cond_0
    return-void
.end method
