.class Lcom/perm/kate/PhotosActivity$7;
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

    .line 485
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 488
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

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

    .line 490
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f03f2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 493
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    iget v0, p1, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 494
    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-static {p1, v0}, Lcom/perm/kate/PhotosActivity;->access$600(Lcom/perm/kate/PhotosActivity;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/PhotosActivity;->access$700(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 495
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$7;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$500(Lcom/perm/kate/PhotosActivity;)V

    goto :goto_1

    .line 497
    :cond_2
    invoke-static {p1}, Lcom/perm/kate/PhotosActivity;->access$800(Lcom/perm/kate/PhotosActivity;)V

    :goto_1
    return-void
.end method
