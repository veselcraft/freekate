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

    .line 475
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 479
    check-cast p1, Ljava/util/ArrayList;

    .line 480
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$10;->this$0:Lcom/perm/kate/SearchParamsActivity;

    new-instance v1, Lcom/perm/kate/SearchParamsActivity$10$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchParamsActivity$10$1;-><init>(Lcom/perm/kate/SearchParamsActivity$10;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
