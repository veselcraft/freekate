.class Lcom/perm/kate/PhotosActivity$8;
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
    .line 454
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 457
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    .line 458
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v1}, Lcom/perm/kate/PhotosActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070385

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 467
    :goto_1
    return-void

    .line 457
    .end local v0    # "count":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    iget v1, v1, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 463
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v2, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v3}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-static {v2, v3}, Lcom/perm/kate/PhotosActivity;->access$700(Lcom/perm/kate/PhotosActivity;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/PhotosActivity;->access$800(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 464
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotosActivity;->access$600(Lcom/perm/kate/PhotosActivity;)V

    goto :goto_1

    .line 466
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity$8;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {v1}, Lcom/perm/kate/PhotosActivity;->access$900(Lcom/perm/kate/PhotosActivity;)V

    goto :goto_1
.end method
