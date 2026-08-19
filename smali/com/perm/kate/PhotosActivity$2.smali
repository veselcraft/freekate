.class Lcom/perm/kate/PhotosActivity$2;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 179
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 184
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p2, p1, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    if-eqz p2, :cond_0

    .line 185
    invoke-static {p1, p3}, Lcom/perm/kate/PhotosActivity;->access$100(Lcom/perm/kate/PhotosActivity;I)V

    return-void

    .line 188
    :cond_0
    iget-wide p1, p1, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 p4, -0x2710

    cmp-long v0, p1, p4

    if-nez v0, :cond_1

    .line 189
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class p4, Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "com.perm.kate.photo"

    .line 191
    iget-object p4, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p4, p4, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object p4, p4, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "com.perm.kate.confirm_tag"

    const/4 p3, 0x1

    .line 192
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 197
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 198
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    const-class p4, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "com.perm.kate.position"

    .line 200
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "album_id"

    .line 201
    iget-object p3, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide p3, p3, Lcom/perm/kate/PhotosActivity;->aid:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "com.perm.kate.owner_id"

    .line 202
    iget-object p3, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide p3, p3, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 203
    iget-object p2, p0, Lcom/perm/kate/PhotosActivity$2;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
