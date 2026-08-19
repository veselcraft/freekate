.class Lcom/perm/kate/SearchActivity$21$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity$21;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SearchActivity$21;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity$21;)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$21$1;->this$1:Lcom/perm/kate/SearchActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 913
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$21$1;->this$1:Lcom/perm/kate/SearchActivity$21;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$21;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$21$1;->this$1:Lcom/perm/kate/SearchActivity$21;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity$21;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4800(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupsAdapter;

    iget-object v2, p0, Lcom/perm/kate/SearchActivity$21$1;->this$1:Lcom/perm/kate/SearchActivity$21;

    iget-object v2, v2, Lcom/perm/kate/SearchActivity$21;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v3, Lcom/perm/kate/GroupCursor;

    iget-object v4, p0, Lcom/perm/kate/SearchActivity$21$1;->this$1:Lcom/perm/kate/SearchActivity$21;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity$21;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v4, v4, Lcom/perm/kate/SearchActivity;->groups:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lcom/perm/kate/GroupCursor;-><init>(Ljava/util/ArrayList;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/GroupsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
