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

    .line 854
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 859
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object p1, p1, Lcom/perm/kate/SearchActivity;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    .line 860
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 862
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 863
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 866
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 867
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p2}, Lcom/perm/kate/SearchActivity;->access$6400(Lcom/perm/kate/SearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 868
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "user_id"

    .line 869
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 871
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 873
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/SearchActivity$19;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_1
    return-void
.end method
