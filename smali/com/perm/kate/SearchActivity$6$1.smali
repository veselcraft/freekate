.class Lcom/perm/kate/SearchActivity$6$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$6;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$6;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 405
    new-instance v0, Lcom/perm/kate/AudioListAdapter;

    iget-object v1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4600(Lcom/perm/kate/SearchActivity;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;ZLjava/util/HashSet;I)V

    .line 406
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4500(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 407
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->setSelectButton(Landroid/widget/Button;)V

    .line 408
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$6$1;->this$1:Lcom/perm/kate/SearchActivity$6;

    iget-object v1, v1, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
