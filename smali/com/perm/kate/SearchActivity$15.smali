.class Lcom/perm/kate/SearchActivity$15;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->requeryOnUiThread()V
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

    .line 653
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$15;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$15;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchActivity$15;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$15;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
