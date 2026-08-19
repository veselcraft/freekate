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

.field callback_delete:Lcom/perm/kate/session/Callback;

.field private cancelOnClickListener:Landroid/view/View$OnClickListener;

.field group_id:Ljava/lang/Long;

.field is_me:Z

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field photoList:Lcom/perm/kate/PhotoList;

.field private photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

.field private photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field photo_move:Lcom/perm/kate/api/Photo;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectBtn_listener:Landroid/view/View$OnClickListener;

.field select_mode:I

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public static synthetic $r8$lambda$6l079B1PBIXrvR2pm_Cd_4esyzs(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hDPRIkqIDwDbVtY1N-kupbcJwjg(Lcom/perm/kate/PhotosActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->lambda$reorderPhotoInThread$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRq4K4u72vOH3HcnQb7dS5wEUpk(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$t_YQjswbmolIfzcMdhRD_GYX4us(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->lambda$reorderPhoto$3()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    .line 68
    iput-boolean v0, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    .line 161
    new-instance v0, Lcom/perm/kate/PhotosActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$1;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->selectBtn_listener:Landroid/view/View$OnClickListener;

    .line 179
    new-instance v0, Lcom/perm/kate/PhotosActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$2;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 271
    new-instance v0, Lcom/perm/kate/PhotosActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$4;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 434
    new-instance v0, Lcom/perm/kate/PhotosActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$5;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 472
    new-instance v0, Lcom/perm/kate/PhotosActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$6;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->cancelOnClickListener:Landroid/view/View$OnClickListener;

    .line 485
    new-instance v0, Lcom/perm/kate/PhotosActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$7;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 526
    new-instance v0, Lcom/perm/kate/PhotosActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotosActivity$9;-><init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 584
    new-instance v0, Lcom/perm/kate/PhotosActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$10;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 646
    new-instance v0, Lcom/perm/kate/PhotosActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$11;-><init>(Lcom/perm/kate/PhotosActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotosActivity;)Lcom/perm/kate/PhotoListAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotosActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->reorderPhotoInThread(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PhotosActivity;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->downloadAll(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->selectPhotoSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotosActivity;->selectPhotoForAction(Lcom/perm/kate/api/Photo;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotosActivity;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->photoEdit(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->disableSelectModeForAction()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotosActivity;Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->deletePhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotosActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->showAlbumsForMove()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->appendNewPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method private appendNewPhotos(Ljava/util/ArrayList;)V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 581
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private confirmDownloadAll()V
    .locals 4

    .line 666
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04df

    .line 667
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/PhotosActivity$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotosActivity$12;-><init>(Lcom/perm/kate/PhotosActivity;)V

    const v3, 0x7f0f05a7

    .line 668
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 678
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 680
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 681
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;
    .locals 6

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    .line 504
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 505
    new-instance v2, Lcom/perm/kate/api/IdsPair;

    invoke-direct {v2}, Lcom/perm/kate/api/IdsPair;-><init>()V

    const/4 v3, 0x0

    .line 506
    aget-object v3, v1, v3

    const-string v4, "photo"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    const/4 v3, 0x1

    .line 507
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/perm/kate/api/IdsPair;->id:J

    .line 508
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private deletePhotos(Ljava/util/ArrayList;)V
    .locals 7

    .line 514
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .line 515
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    iget-wide v5, v1, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->deletePhoto(JJ)Z

    goto :goto_0

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    .line 518
    new-instance v0, Lcom/perm/kate/PhotosActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PhotosActivity$8;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableSelectModeForAction()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    iput v0, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const v0, 0x7f09014c

    .line 481
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoListAdapter;->cancelSelectModeForAction()V

    return-void
.end method

.method private displayAlbumTitle()V
    .locals 5

    .line 138
    iget-wide v0, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v2, -0x2710

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const v0, 0x7f0f0369

    .line 139
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    return-void

    .line 142
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(JJ)Lcom/perm/kate/api/Album;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, ""

    .line 146
    iget-object v2, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/AlbumsFragment;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :cond_2
    iget-object v2, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_3
    iget-object v2, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 154
    :cond_5
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    const v0, 0x7f090167

    .line 155
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v1, 0x1

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private displayUploadOptions(Ljava/util/ArrayList;)V
    .locals 2

    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 572
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "show_caption"

    const/4 v1, 0x1

    .line 573
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 574
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private downloadAll(I)V
    .locals 2

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v1, v1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0, p1}, Lcom/perm/kate/PhotoSaver;->savePhotos(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    .line 90
    new-instance v0, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/PhotosActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$reorderPhoto$3()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$reorderPhotoInThread$2(I)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->reorderPhoto(I)V

    return-void
.end method

.method private movePhotos(J)V
    .locals 12

    .line 716
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 719
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoListAdapter;->selected_photos:Ljava/util/LinkedHashSet;

    invoke-direct {p0, v0}, Lcom/perm/kate/PhotosActivity;->convertToIdsPairs(Ljava/util/LinkedHashSet;)Ljava/util/ArrayList;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/IdsPair;

    .line 723
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    iget-wide v8, v2, Lcom/perm/kate/api/IdsPair;->id:J

    iget-wide v10, v2, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual/range {v3 .. v11}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhoto(JJJJ)Z

    goto :goto_0

    .line 724
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->disableSelectModeForAction()V

    .line 725
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    .line 727
    new-instance v1, Lcom/perm/kate/PhotosActivity$14;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/perm/kate/PhotosActivity$14;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;J)V

    .line 732
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method private photoEdit(Lcom/perm/kate/api/Photo;)V
    .locals 4

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    const-class v1, Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 429
    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.pid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 430
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private reorderPhoto(I)V
    .locals 18

    move-object/from16 v10, p0

    move/from16 v0, p1

    const/4 v11, 0x0

    .line 218
    :try_start_0
    iget-object v1, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v1, v1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 221
    iget-object v2, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v2, v2, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 222
    iget-object v3, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v3, v3, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    iget-wide v3, v3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v11

    .line 224
    :goto_0
    iget-object v4, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-boolean v5, v4, Lcom/perm/kate/PhotoList;->rev:Z

    if-eqz v5, :cond_1

    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    if-eqz v5, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v3

    .line 228
    :goto_2
    iget-object v2, v4, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget-object v3, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-gt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 235
    :goto_3
    iget-object v1, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v1, v1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget-object v2, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, v10, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v3, v10, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 239
    sget-object v12, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, v10, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v13, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget-wide v14, v10, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-wide v0, v10, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v12 .. v17}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 242
    new-instance v0, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, v10}, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/PhotosActivity;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    iget-wide v4, v0, Lcom/perm/kate/api/Photo;->pid:J

    .line 248
    iput-object v11, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    const/4 v0, 0x1

    .line 250
    invoke-virtual {v10, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 251
    new-instance v8, Lcom/perm/kate/PhotosActivity$3;

    invoke-direct {v8, v10, v10}, Lcom/perm/kate/PhotosActivity$3;-><init>(Lcom/perm/kate/PhotosActivity;Landroid/app/Activity;)V

    .line 252
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, v10, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    move-object/from16 v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->reorderPhotos(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {v10, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo_move="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 258
    iput-object v11, v10, Lcom/perm/kate/PhotosActivity;->photo_move:Lcom/perm/kate/api/Photo;

    :goto_4
    return-void
.end method

.method private reorderPhotoInThread(I)V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda3;-><init>(Lcom/perm/kate/PhotosActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requery()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoList;->fetchPhotos()V

    .line 455
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v1, v1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private selectPhotoForAction(Lcom/perm/kate/api/Photo;I)V
    .locals 3

    .line 460
    iput p2, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const p2, 0x7f09014c

    .line 461
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f09006a

    .line 462
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const v0, 0x7f0f01c5

    .line 463
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 464
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->cancelOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090078

    .line 465
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const v1, 0x7f0f035a

    goto :goto_0

    :cond_0
    const v1, 0x7f0f00ba

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (1)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->actionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    iget v1, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/perm/kate/PhotoListAdapter;->setSelectModeForAction(Landroid/widget/Button;Lcom/perm/kate/api/Photo;I)V

    return-void
.end method

.method private selectPhotoSize()V
    .locals 3

    .line 685
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04ef

    .line 686
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 687
    new-instance v1, Lcom/perm/kate/PhotosActivity$13;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotosActivity$13;-><init>(Lcom/perm/kate/PhotosActivity;)V

    const v2, 0x7f03002c

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAlbumsForMove()V
    .locals 4

    .line 708
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 709
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 710
    iget-wide v1, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_for_move"

    const/4 v2, 0x1

    .line 711
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xd

    .line 712
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public albumCommentsClick()V
    .locals 4

    .line 700
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 701
    const-class v1, Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 702
    iget-wide v1, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-string v3, "com.perm.kate.album_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 703
    iget-wide v1, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public editClick()V
    .locals 4

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    const-class v1, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 448
    iget-wide v1, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-string v3, "com.perm.kate.aid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.edit_mode"

    const/4 v2, 0x1

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 12

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    .line 353
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    iget-boolean v0, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_1

    :cond_0
    const v0, 0x7f09003b

    .line 355
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 356
    :cond_1
    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_2

    const v0, 0x7f090400

    .line 357
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-boolean v0, v0, Lcom/perm/kate/PhotoList;->rev:Z

    const v4, 0x7f09030a

    const v5, 0x7f09030b

    if-eqz v0, :cond_3

    .line 359
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 361
    :cond_3
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 363
    :goto_0
    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v8, -0x3e8

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    const-wide/16 v10, -0x2710

    cmp-long v0, v6, v10

    if-nez v0, :cond_5

    .line 364
    :cond_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 365
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :cond_5
    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const v0, 0x7f09003a

    cmp-long v6, v4, v1

    if-gez v6, :cond_6

    cmp-long v1, v4, v8

    if-eqz v1, :cond_6

    .line 368
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    cmp-long v1, v4, v8

    if-nez v1, :cond_7

    .line 370
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0f0043

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v12, p0

    move/from16 v0, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    .line 540
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 542
    :try_start_0
    iget-object v1, v12, Lcom/perm/kate/PhotosActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v12, v0, v13, v14, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v1, 0x7

    const/4 v15, 0x1

    const/4 v11, -0x1

    if-ne v0, v1, :cond_1

    if-ne v13, v11, :cond_1

    const-string v1, "uris"

    .line 545
    invoke-virtual {v14, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "caption"

    .line 546
    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "resize_option"

    const/4 v3, 0x2

    .line 547
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string v2, "rotate"

    const/4 v3, 0x0

    .line 548
    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v4, 0x7f0f0519

    .line 549
    invoke-virtual {v12, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v4, 0x7f0f03e1

    .line 550
    invoke-virtual {v12, v4}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 551
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v15, :cond_0

    .line 552
    new-instance v16, Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    iget-wide v4, v12, Lcom/perm/kate/PhotosActivity;->aid:J

    iget-object v6, v12, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    iget-object v9, v12, Lcom/perm/kate/PhotosActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Lcom/perm/kate/photoupload/AlbumUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JLjava/lang/Long;Ljava/lang/String;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/photoupload/AlbumUploader;->upload()V

    goto :goto_0

    .line 554
    :cond_0
    new-instance v2, Lcom/perm/kate/PhotosActivity$MultiUploader;

    invoke-direct {v2, v12, v1, v8}, Lcom/perm/kate/PhotosActivity$MultiUploader;-><init>(Lcom/perm/kate/PhotosActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v2}, Lcom/perm/kate/PhotosActivity$MultiUploader;->start()V

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v15, :cond_2

    if-ne v13, v1, :cond_2

    .line 557
    iget-object v2, v12, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    invoke-virtual {v2, v12}, Lcom/perm/kate/PhotoList;->refreshInThread(Lcom/perm/kate/BaseActivity;)V

    :cond_2
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    if-ne v13, v1, :cond_3

    const-string v0, "com.perm.kate.aid"

    const-wide/16 v1, 0x0

    .line 559
    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 561
    invoke-direct {v12, v3, v4}, Lcom/perm/kate/PhotosActivity;->movePhotos(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 564
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 565
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 73
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c00f6

    .line 78
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f050f

    .line 79
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 80
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090163

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 82
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 87
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/PhotosActivity;->is_me:Z

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.aid"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    .line 89
    new-instance v0, Lcom/perm/kate/PhotoList;

    iget-wide v7, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    new-instance v11, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0}, Lcom/perm/kate/PhotosActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/PhotosActivity;)V

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/perm/kate/PhotoList;-><init>(JJLcom/perm/utils/SimpleListener;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    .line 99
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->displayAlbumTitle()V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.perm.kate.select_mode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 103
    iput v1, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    const v0, 0x7f09014c

    .line 104
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09006a

    .line 105
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090408

    .line 106
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090078

    .line 107
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    const v0, 0x7f0f0051

    .line 108
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->selectBtn_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_2
    iget-wide v6, p0, Lcom/perm/kate/PhotosActivity;->album_owner_id:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_3

    neg-long v4, v6

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->group_id:Ljava/lang/Long;

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-wide v4, p0, Lcom/perm/kate/PhotosActivity;->aid:J

    const-wide/16 v6, -0x6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    const-wide/16 v6, -0xf

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    const-wide/16 v6, -0x7

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    const-wide/16 v6, -0x2328

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    iput-boolean v1, v0, Lcom/perm/kate/PhotoList;->rev:Z

    .line 116
    invoke-virtual {v0}, Lcom/perm/kate/PhotoList;->fetchPhotos()V

    .line 121
    new-instance v0, Lcom/perm/kate/PhotoListAdapter;

    iget-object v1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v1, v1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iget v4, p0, Lcom/perm/kate/PhotosActivity;->select_mode:I

    invoke-direct {v0, v1, p0, v4, v3}, Lcom/perm/kate/PhotoListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;ILandroid/widget/Button;)V

    iput-object v0, p0, Lcom/perm/kate/PhotosActivity;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 122
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    invoke-virtual {p1, p0}, Lcom/perm/kate/PhotoList;->refreshInThread(Lcom/perm/kate/BaseActivity;)V

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "upload_from_share"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "photo_to_upload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 130
    invoke-static {p1}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    .line 131
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "photos_to_upload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 133
    invoke-static {p1}, Lcom/perm/kate/Helper;->makeUriList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotosActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 738
    iput-object v1, v0, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    .line 739
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    .line 740
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 405
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 380
    :sswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->uploadClick()V

    return v2

    .line 390
    :sswitch_1
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iput-boolean v1, p1, Lcom/perm/kate/PhotoList;->rev:Z

    .line 391
    invoke-virtual {p1, p0}, Lcom/perm/kate/PhotoList;->refreshInThread(Lcom/perm/kate/BaseActivity;)V

    return v2

    .line 386
    :sswitch_2
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iput-boolean v2, p1, Lcom/perm/kate/PhotoList;->rev:Z

    .line 387
    invoke-virtual {p1, p0}, Lcom/perm/kate/PhotoList;->refreshInThread(Lcom/perm/kate/BaseActivity;)V

    return v2

    .line 394
    :sswitch_3
    iget-object p1, p0, Lcom/perm/kate/PhotosActivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object p1, p1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 395
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 396
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->confirmDownloadAll()V

    :cond_1
    :goto_0
    return v2

    .line 383
    :sswitch_4
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->editClick()V

    return v2

    .line 402
    :sswitch_5
    invoke-virtual {p0}, Lcom/perm/kate/PhotosActivity;->albumCommentsClick()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f09003a -> :sswitch_5
        0x7f09003b -> :sswitch_4
        0x7f0900f9 -> :sswitch_3
        0x7f09030a -> :sswitch_2
        0x7f09030b -> :sswitch_1
        0x7f090400 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 345
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 346
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotosActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 347
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 413
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->confirmDownloadAll()V

    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 535
    invoke-direct {p0}, Lcom/perm/kate/PhotosActivity;->requery()V

    return-void
.end method

.method public uploadClick()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 423
    invoke-static/range {v0 .. v5}, Lcom/perm/kate/photoupload/PhotoChooser;->requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V

    return-void
.end method
