.class Lcom/perm/kate/SearchActivity$19;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 834
    .local v2, "user":Lcom/perm/kate/api/User;
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v2    # "user":Lcom/perm/kate/api/User;
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 841
    .local v3, "user_id":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$6200(Lcom/perm/kate/SearchActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v0, "i":Landroid/content/Intent;
    const-string v4, "user_id"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/perm/kate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 845
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v4}, Lcom/perm/kate/SearchActivity;->finish()V

    .line 848
    .end local v0    # "i":Landroid/content/Intent;
    :goto_1
    return-void

    .line 835
    .end local v3    # "user_id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 836
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 837
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 847
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v3    # "user_id":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1
.end method
