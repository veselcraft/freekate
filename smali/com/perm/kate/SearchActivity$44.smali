.class Lcom/perm/kate/SearchActivity$44;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method public static synthetic $r8$lambda$G358aWKjnoFEM7sD-f1QrxhYW58(Lcom/perm/kate/SearchActivity$44;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/SearchActivity$44;->lambda$ready$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1589
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$ready$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 1596
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1597
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$5100(Lcom/perm/kate/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1608
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1609
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1610
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1593
    check-cast p1, Ljava/util/ArrayList;

    .line 1594
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v1, Lcom/perm/kate/SearchActivity$44$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/SearchActivity$44$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/SearchActivity$44;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1599
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 1600
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0

    .line 1602
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1603
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$44;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method
