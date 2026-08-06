.class public Lcom/perm/kate/PhotosActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotosActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/PhotosActivity$MultiUploader;
    }
.end annotation


# instance fields
.field private actionOnClickListener:Landroid/view/View$OnClickListener;

.field aid:J

.field album_owner_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callback_delete:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field private cancelOnClickListener:Landroid/view/View$OnClickListener;

.field group_id:Ljava/lang/Long;

.field private gv_photos:Landroid/widget/GridView;

.field is_me:Z

.field page_size:I

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

.field private photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field rev:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectBtn_listener:Landroid/view/View$OnClickListener;

.field select_mode:I

.field private state:I

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    .line 65
    iput v1, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    .line 66
    iput-boolean v1, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/PhotosActivity;->state:I

    .line 75
    const/16 v0, 0x64

    iput v0, p0, Lcom/perm/kate/PhotosActivity;->page_size:I

    .line 154
    new-instance v0, Lcom/perm/kate/PhotosActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$1;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->selectBtn_listener:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/perm/kate/PhotosActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotosActivity$3;-><init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 225
    new-instance v0, Lcom/perm/kate/PhotosActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$4;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 271
    new-instance v0, Lcom/perm/kate/PhotosActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$5;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 403
    new-instance v0, Lcom/perm/kate/PhotosActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$6;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 441
    new-instance v0, Lcom/perm/kate/PhotosActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$7;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->cancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 454
    new-instance v0, Lcom/perm/kate/PhotosActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$8;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 495
    new-instance v0, Lcom/perm/kate/PhotosActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotosActivity$10;-><init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 551
    new-instance v0, Lcom/perm/kate/PhotosActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$11;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 613
    new-instance v0, Lcom/perm/kate/PhotosActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$12;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 656
    new-instance v0, Lcom/perm/kate/PhotosActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotosActivity$14;-><init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotosActivity;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotosActivity;->downloadPhotos(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->appendNewPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->downloadAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotosActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/perm/kate/PhotosActivity;->state:I

    return v0
.end method

.method static synthetic access$202(Lcom/perm/kate/PhotosActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/perm/kate/PhotosActivity;->state:I

    return p1
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;
    .param p2, "x2"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotosActivity;->selectPhotoForAction(Lcom/perm/kate/api/Photo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->photoEdit(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->disableSelectModeForAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotosActivity;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Ljava/util/LinkedHashSet;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->deletePhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotosActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotosActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->showAlbumsForMove()V

    return-void
.end method

.method private appendNewPhotos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "new_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 548
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 549
    return-void
.end method

.method private confirmDownloadAll()V
    .locals 5

    .prologue
    .line 690
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 691
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044d

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/PhotosActivity$15;

    invoke-direct {v4, p0}, Lcom/perm/kate/PhotosActivity$15;-><init>(Lcom/perm/kate/PhotosActivity;)V

    .line 692
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 697
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 698
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 699
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 700
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 701
    return-void
.end method

.method private convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "selected_photos":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v1, "idsPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 473
    .local v3, "ph":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "ids":[Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/api/IdsPair;

    invoke-direct {v2}, Lcom/perm/kate/api/IdsPair;-><init>()V

    .line 475
    .local v2, "pair":Lcom/perm/kate/api/IdsPair;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const-string v6, "photo"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    .line 476
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/perm/kate/api/IdsPair;->id:J

    .line 477
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    .end local v0    # "ids":[Ljava/lang/String;
    .end local v2    # "pair":Lcom/perm/kate/api/IdsPair;
    .end local v3    # "ph":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private deletePhotos(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "idsPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/IdsPair;

    .line 484
    .local v0, "pair":Lcom/perm/kate/api/IdsPair;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v0, Lcom/perm/kate/api/IdsPair;->owner_id:J

    iget-wide v6, v0, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->deletePhoto(JJ)Z

    goto :goto_0

    .line 485
    .end local v0    # "pair":Lcom/perm/kate/api/IdsPair;
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    .line 487
    new-instance v1, Lcom/perm/kate/PhotosActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotosActivity$9;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 492
    invoke-virtual {v1}, Lcom/perm/kate/PhotosActivity$9;->start()V

    .line 493
    return-void
.end method

.method private disableSelectModeForAction()V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    .line 450
    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->cancelSelectModeForAction()V

    .line 452
    return-void
.end method

.method private displayAlbumTitle()V
    .locals 8

    .prologue
    .line 131
    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v6, -0x2710

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 132
    const v3, 0x7f070307

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->setHeaderTitle(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(JJ)Lcom/perm/kate/api/Album;

    move-result-object v0

    .line 136
    .local v0, "album":Lcom/perm/kate/api/Album;
    if-eqz v0, :cond_0

    .line 138
    const-string v2, ""

    .line 139
    .local v2, "text":Ljava/lang/String;
    iget-object v3, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/AlbumsFragment;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_2
    iget-object v3, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_3
    iget-object v3, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotosActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 148
    const v3, 0x7f0e01f6

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, "header_text":Landroid/widget/TextView;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 151
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0
.end method

.method private displayUploadOptions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 541
    const-string v1, "show_caption"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 542
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PhotosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 543
    return-void
.end method

.method private downloadAll()V
    .locals 4

    .prologue
    .line 704
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 705
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "key_size_saved_photo"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 706
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2, v1}, Lcom/perm/kate/PhotoSaver;->savePhotos(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V

    .line 707
    return-void
.end method

.method private downloadPhotos(Ljava/lang/Integer;Lcom/perm/kate/session/Callback;)V
    .locals 8
    .param p1, "offset"    # Ljava/lang/Integer;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 645
    iget-wide v0, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x2710

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 646
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget v1, p0, Lcom/perm/kate/PhotosActivity;->page_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/perm/kate/session/Session;->getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 654
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 648
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/PhotosActivity;->page_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    move-object v2, p1

    move-object v5, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 649
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 650
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/PhotosActivity;->page_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    move-object v2, p1

    move-object v5, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 652
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v3, p0, Lcom/perm/kate/PhotosActivity;->page_size:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    move-object v3, p1

    move-object v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private fetchPhotos()V
    .locals 9

    .prologue
    .line 185
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 186
    .local v6, "account_id":J
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v6    # "account_id":J
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 635
    new-instance v0, Lcom/perm/kate/PhotosActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$13;-><init>(Lcom/perm/kate/PhotosActivity;)V

    .line 641
    invoke-virtual {v0}, Lcom/perm/kate/PhotosActivity$13;->start()V

    .line 642
    return-void
.end method

.method private movePhotos(J)V
    .locals 13
    .param p1, "target_album_id"    # J

    .prologue
    .line 726
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, v1, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1}, Lcom/perm/kate/PhotosActivity;->convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 732
    .local v0, "idsPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/IdsPair;

    .line 733
    .local v10, "pair":Lcom/perm/kate/api/IdsPair;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    iget-wide v6, v10, Lcom/perm/kate/api/IdsPair;->id:J

    iget-wide v8, v10, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhoto(JJJJ)Z

    goto :goto_1

    .line 734
    .end local v10    # "pair":Lcom/perm/kate/api/IdsPair;
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->disableSelectModeForAction()V

    .line 735
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    .line 737
    new-instance v1, Lcom/perm/kate/PhotosActivity$16;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/perm/kate/PhotosActivity$16;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;J)V

    .line 742
    invoke-virtual {v1}, Lcom/perm/kate/PhotosActivity$16;->start()V

    goto :goto_0
.end method

.method private photoEdit(Lcom/perm/kate/api/Photo;)V
    .locals 4
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    .local v0, "pe_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 398
    const-string v1, "com.perm.kate.pid"

    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotosActivity;->startActivity(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/perm/kate/PhotosActivity;->state:I

    .line 174
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotosActivity;->showProgressBar(Z)V

    .line 175
    new-instance v0, Lcom/perm/kate/PhotosActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$2;-><init>(Lcom/perm/kate/PhotosActivity;)V

    .line 180
    invoke-virtual {v0}, Lcom/perm/kate/PhotosActivity$2;->start()V

    .line 181
    return-void
.end method

.method private requery()V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->fetchPhotos()V

    .line 424
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 425
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->notifyDataSetChanged()V

    .line 426
    return-void
.end method

.method private selectPhotoForAction(Lcom/perm/kate/api/Photo;I)V
    .locals 6
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;
    .param p2, "action"    # I

    .prologue
    .line 429
    iput p2, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    .line 430
    const v3, 0x7f0e00aa

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const v3, 0x7f0e019b

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 432
    .local v0, "btn_cancel":Landroid/widget/Button;
    const v3, 0x7f07015d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 433
    iget-object v3, p0, Lcom/perm/kate/PhotosActivity;->cancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    const v3, 0x7f0e019d

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 435
    .local v1, "btn_delete":Landroid/widget/Button;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const v3, 0x7f0702fa

    :goto_0
    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "button_text":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v3, p0, Lcom/perm/kate/PhotosActivity;->actionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v3, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget v4, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    invoke-virtual {v3, v1, p1, v4}, Lcom/perm/kate/PhotoListAdapter;->setSelectModeForAction(Landroid/widget/Button;Lcom/perm/kate/api/Photo;I)V

    .line 439
    return-void

    .line 435
    .end local v2    # "button_text":Ljava/lang/String;
    :cond_0
    const v3, 0x7f070084

    goto :goto_0
.end method

.method private showAlbumsForMove()V
    .locals 4

    .prologue
    .line 718
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 719
    .local v0, "a_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 720
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 721
    const-string v1, "com.perm.kate.select_for_move"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PhotosActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 723
    return-void
.end method


# virtual methods
.method public albumCommentsClick()V
    .locals 4

    .prologue
    .line 710
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 711
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 712
    const-string v1, "com.perm.kate.album_id"

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 713
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotosActivity;->startActivity(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method public editClick()V
    .locals 4

    .prologue
    .line 415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 417
    const-string v1, "com.perm.kate.aid"

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 418
    const-string v1, "com.perm.kate.edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotosActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v12, 0x7f0e03a5

    const v7, 0x7f0e03a4

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x3e8

    const/4 v6, 0x0

    .line 341
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 342
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    iget-boolean v1, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v10

    if-gez v1, :cond_1

    .line 344
    :cond_0
    const v1, 0x7f0e03a3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v10

    if-gez v1, :cond_2

    .line 346
    const v1, 0x7f0e0388

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    :cond_2
    iget-boolean v1, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    if-eqz v1, :cond_6

    .line 348
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 352
    :goto_0
    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v4, -0x2710

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 353
    :cond_3
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    :cond_4
    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v10

    if-gez v1, :cond_7

    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_7

    .line 357
    const v1, 0x7f0e03a7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 360
    :cond_5
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 350
    :cond_6
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 358
    :cond_7
    iget-wide v2, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_5

    .line 359
    const v1, 0x7f0e03a7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f07002c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 510
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/PhotosActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 512
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 513
    const-string v5, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 514
    .local v19, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "caption"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "caption":Ljava/lang/String;
    const-string v5, "resize_option"

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 516
    .local v12, "resize_option":I
    const-string v5, "rotate"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 517
    .local v4, "rotate":I
    const v5, 0x7f07048a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/perm/kate/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, "message":Ljava/lang/String;
    const v5, 0x7f070378

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/perm/kate/PhotosActivity;->displayToast(I)V

    .line 519
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 520
    new-instance v5, Lcom/perm/kate/photoupload/AlbumUploader;

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/PhotosActivity;->aid:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/PhotosActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v15}, Lcom/perm/kate/photoupload/AlbumUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JLjava/lang/Long;Ljava/lang/String;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v5}, Lcom/perm/kate/photoupload/AlbumUploader;->upload()V

    .line 524
    .end local v4    # "rotate":I
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "resize_option":I
    .end local v14    # "message":Ljava/lang/String;
    .end local v19    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_1

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PhotosActivity;->refreshInThread()V

    .line 526
    :cond_1
    const/16 v5, 0xd

    move/from16 v0, p1

    if-ne v0, v5, :cond_2

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 527
    const-string v5, "com.perm.kate.aid"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 528
    .local v16, "aid":J
    const-wide/16 v6, 0x0

    cmp-long v5, v16, v6

    if-lez v5, :cond_2

    .line 529
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/PhotosActivity;->movePhotos(J)V

    .line 535
    .end local v16    # "aid":J
    :cond_2
    :goto_1
    return-void

    .line 522
    .restart local v4    # "rotate":I
    .restart local v11    # "caption":Ljava/lang/String;
    .restart local v12    # "resize_option":I
    .restart local v14    # "message":Ljava/lang/String;
    .restart local v19    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    new-instance v5, Lcom/perm/kate/PhotosActivity$MultiUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1, v12}, Lcom/perm/kate/PhotosActivity$MultiUploader;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v5}, Lcom/perm/kate/PhotosActivity$MultiUploader;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    .end local v4    # "rotate":I
    .end local v11    # "caption":Ljava/lang/String;
    .end local v12    # "resize_option":I
    .end local v14    # "message":Ljava/lang/String;
    .end local v19    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v18

    .line 532
    .local v18, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    .line 533
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v6, 0x7f0300dc

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->setContentView(I)V

    .line 82
    const v6, 0x7f070480

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->setHeaderTitle(I)V

    .line 83
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->setupMenuButton()V

    .line 84
    const v6, 0x7f0e0189

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/perm/kate/PhotosActivity;->gv_photos:Landroid/widget/GridView;

    .line 85
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity;->gv_photos:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity;->photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity;->gv_photos:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 87
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity;->gv_photos:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.uid"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "tmp":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    .line 90
    if-eqz v2, :cond_5

    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    .line 91
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.aid"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    .line 92
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->displayAlbumTitle()V

    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.select_mode"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "_select_mode":Z
    const/4 v1, 0x0

    .line 95
    .local v1, "select_button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 96
    const/4 v6, 0x1

    iput v6, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    .line 97
    const v6, 0x7f0e00aa

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v6, 0x7f0e019b

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v6, 0x7f0e019c

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v6, 0x7f0e019d

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "select_button":Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 101
    .restart local v1    # "select_button":Landroid/widget/Button;
    const v6, 0x7f07003a

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 102
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity;->selectBtn_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 105
    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    .line 107
    :cond_1
    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0xf

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x7

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    :cond_2
    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    .line 109
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->fetchPhotos()V

    .line 114
    new-instance v6, Lcom/perm/kate/PhotoListAdapter;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    iget v8, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    invoke-direct {v6, v7, p0, v8, v1}, Lcom/perm/kate/PhotoListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;ILandroid/widget/Button;)V

    iput-object v6, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 115
    iget-object v6, p0, Lcom/perm/kate/PhotosActivity;->gv_photos:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->refreshInThread()V

    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "upload_from_share"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 120
    .local v3, "upload_from_share":Z
    if-eqz v3, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photo_to_upload"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 122
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 123
    invoke-static {v4}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "photos_to_upload"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 125
    .local v5, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v5, :cond_4

    .line 126
    invoke-static {v5}, Lcom/perm/kate/Helper;->makeUriList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    .line 128
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_4
    return-void

    .line 90
    .end local v0    # "_select_mode":Z
    .end local v1    # "select_button":Landroid/widget/Button;
    .end local v3    # "upload_from_share":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 107
    .restart local v0    # "_select_mode":Z
    .restart local v1    # "select_button":Landroid/widget/Button;
    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 388
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 367
    :sswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->uploadClick()V

    goto :goto_0

    .line 370
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->editClick()V

    goto :goto_0

    .line 373
    :sswitch_2
    iput-boolean v0, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    .line 374
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->refreshInThread()V

    goto :goto_0

    .line 377
    :sswitch_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/PhotosActivity;->rev:Z

    .line 378
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->refreshInThread()V

    goto :goto_0

    .line 381
    :sswitch_4
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->confirmDownloadAll()V

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->albumCommentsClick()V

    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x7f0e0388 -> :sswitch_0
        0x7f0e03a3 -> :sswitch_1
        0x7f0e03a4 -> :sswitch_2
        0x7f0e03a5 -> :sswitch_3
        0x7f0e03a6 -> :sswitch_4
        0x7f0e03a7 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 334
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 335
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotosActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 336
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 503
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onRestart()V

    .line 504
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    .line 505
    return-void
.end method

.method public uploadClick()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 392
    const/4 v2, 0x1

    move-object v0, p0

    move v4, v3

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V

    .line 393
    return-void
.end method
