.class Lcom/perm/kate/PhotosActivity$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 158
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_1

    .line 159
    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v4}, Lcom/perm/kate/PhotosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070385

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 169
    :goto_1
    return-void

    .line 157
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    .restart local v0    # "count":I
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v4}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v4

    iget-object v4, v4, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "selected_photo":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    .end local v2    # "selected_photo":Ljava/lang/String;
    :cond_2
    const-string v4, "selected_photos"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 167
    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lcom/perm/kate/PhotosActivity;->setResult(ILandroid/content/Intent;)V

    .line 168
    iget-object v4, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v4}, Lcom/perm/kate/PhotosActivity;->finish()V

    goto :goto_1
.end method
