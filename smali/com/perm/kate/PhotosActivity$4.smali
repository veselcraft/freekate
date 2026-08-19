.class Lcom/perm/kate/PhotosActivity$4;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 271
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 275
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-object p1, p1, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object p1, p1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 276
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object p3, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-lez p3, :cond_1

    .line 278
    :cond_0
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f05a2

    invoke-direct {p3, p5, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f022e

    const/4 v0, 0x2

    invoke-direct {p3, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f01db

    const/4 v0, 0x5

    invoke-direct {p3, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object p3, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v0, p3, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x7

    const-wide/16 v4, 0x0

    const/4 p3, 0x0

    cmp-long p5, v0, v4

    if-gez p5, :cond_3

    cmp-long p5, v0, v2

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p5, 0x1

    :goto_1
    if-eqz p5, :cond_4

    .line 283
    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 284
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f01cb

    const/4 v1, 0x4

    invoke-direct {p5, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_4
    iget-object p5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v0, p5, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long p5, v0, v2

    if-nez p5, :cond_5

    const/4 p5, 0x1

    goto :goto_2

    :cond_5
    const/4 p5, 0x0

    :goto_2
    if-nez p5, :cond_6

    .line 287
    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result p5

    if-eqz p5, :cond_6

    .line 288
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f0243

    const/4 v1, 0x6

    invoke-direct {p5, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_6
    sget-object p5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 290
    iget-object p5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-boolean v2, p5, Lcom/perm/kate/PhotosActivity;->is_me:Z

    if-nez v2, :cond_7

    iget-wide v2, p5, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    cmp-long p5, v2, v4

    if-gez p5, :cond_8

    sget-object p5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v3, v3, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    mul-long v3, v3, v1

    invoke-virtual {p5, v0, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result p5

    if-eqz p5, :cond_8

    :cond_7
    const/4 p3, 0x1

    .line 291
    :cond_8
    iget-object p5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    iget-wide v0, p5, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x3e8

    cmp-long p5, v0, v2

    if-eqz p5, :cond_9

    const-wide/16 v2, -0x2328

    cmp-long p5, v0, v2

    if-eqz p5, :cond_9

    if-eqz p3, :cond_9

    .line 292
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f0430

    const/16 v0, 0x8

    invoke-direct {p3, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_9
    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->canDelete(Lcom/perm/kate/api/Photo;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 294
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f00ba

    const/4 v0, 0x3

    invoke-direct {p3, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_a
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/PhotosActivity$4;->this$0:Lcom/perm/kate/PhotosActivity;

    invoke-direct {p3, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-static {p2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/PhotosActivity$4$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/PhotosActivity$4$1;-><init>(Lcom/perm/kate/PhotosActivity$4;Ljava/util/ArrayList;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {p3, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 334
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 335
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p4
.end method
