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

    .line 161
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 164
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03f2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 169
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, "selected_photos"

    .line 173
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 175
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$1;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
