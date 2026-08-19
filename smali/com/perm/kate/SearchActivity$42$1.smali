.class Lcom/perm/kate/SearchActivity$42$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$42;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$42;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$42;)V
    .locals 0

    .line 1565
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$42$1;->this$1:Lcom/perm/kate/SearchActivity$42;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1568
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$42$1;->this$1:Lcom/perm/kate/SearchActivity$42;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1569
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$42$1;->this$1:Lcom/perm/kate/SearchActivity$42;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DocsBaseAdapter;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$42$1;->this$1:Lcom/perm/kate/SearchActivity$42;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity$42;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v3, v2, Lcom/perm/kate/SearchActivity;->docs:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/DocsBaseAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
