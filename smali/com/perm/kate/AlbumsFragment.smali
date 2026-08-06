.class public Lcom/perm/kate/AlbumsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "AlbumsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/AlbumsFragment$AlbumData;
    }
.end annotation


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field callback:Lcom/perm/kate/session/Callback;

.field private callback_delete:Lcom/perm/kate/session/Callback;

.field private gid:Ljava/lang/Long;

.field private is_me:Z

.field private lv_album_list:Landroid/widget/GridView;

.field private owner_id:Ljava/lang/Long;

.field private select_for_move:Z

.field private select_for_share:Z

.field private select_mode:Z

.field uri_shared:Landroid/net/Uri;

.field uris_shared:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    .line 42
    iput-boolean v1, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 103
    new-instance v0, Lcom/perm/kate/AlbumsFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AlbumsFragment$2;-><init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 134
    new-instance v0, Lcom/perm/kate/AlbumsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$4;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 163
    new-instance v0, Lcom/perm/kate/AlbumsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$5;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 253
    new-instance v0, Lcom/perm/kate/AlbumsFragment$9;

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AlbumsFragment$9;-><init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->deleteAlbum(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/AlbumsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requery()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->showAlbumContextMenu(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->showConfirmDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->showEditActivity(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->copyPhotoAlbumLink(J)V

    return-void
.end method

.method private copyPhotoAlbumLink(J)V
    .locals 3
    .param p1, "aid"    # J

    .prologue
    .line 213
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->copyPhotoAlbumLink(JJLandroid/content/Context;)V

    .line 214
    return-void
.end method

.method private deleteAlbum(J)V
    .locals 5
    .param p1, "aid"    # J

    .prologue
    .line 241
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 242
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteAlbum(J)Z

    .line 243
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V

    .line 244
    new-instance v0, Lcom/perm/kate/AlbumsFragment$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AlbumsFragment$8;-><init>(Lcom/perm/kate/AlbumsFragment;J)V

    .line 250
    invoke-virtual {v0}, Lcom/perm/kate/AlbumsFragment$8;->start()V

    .line 251
    return-void
.end method

.method private displayData()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Lcom/perm/kate/AlbumListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/kate/AlbumListAdapter;-><init>(Landroid/app/Activity;)V

    .line 94
    .local v0, "album_list_adapter":Lcom/perm/kate/AlbumListAdapter;
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "album_list_adapter":Lcom/perm/kate/AlbumListAdapter;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 98
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private processSharedContent()V
    .locals 6

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 315
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 319
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/perm/kate/AlbumsFragment;->uri_shared:Landroid/net/Uri;

    .line 321
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    const-string v3, "Kate.AlbumsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.getType() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 325
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/AlbumsFragment;->uris_shared:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private refreshOnThread()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumsFragment;->showProgressBar(Z)V

    .line 58
    new-instance v0, Lcom/perm/kate/AlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$1;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    .line 63
    invoke-virtual {v0}, Lcom/perm/kate/AlbumsFragment$1;->start()V

    .line 64
    return-void
.end method

.method private requery()V
    .locals 12

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/AlbumsFragment$AlbumData;>;"
    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-nez v5, :cond_2

    .line 341
    new-instance v1, Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {v1}, Lcom/perm/kate/AlbumsFragment$AlbumData;-><init>()V

    .line 342
    .local v1, "album_all_photos":Lcom/perm/kate/AlbumsFragment$AlbumData;
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    .line 343
    const v5, 0x7f070032

    invoke-virtual {p0, v5}, Lcom/perm/kate/AlbumsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    .line 344
    const-string v5, ""

    iput-object v5, v1, Lcom/perm/kate/AlbumsFragment$AlbumData;->description:Ljava/lang/String;

    .line 345
    const-wide/16 v8, -0x3e8

    iput-wide v8, v1, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    .line 346
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    .line 347
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v1    # "album_all_photos":Lcom/perm/kate/AlbumsFragment$AlbumData;
    :cond_2
    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_3

    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-nez v5, :cond_3

    .line 352
    new-instance v2, Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {v2}, Lcom/perm/kate/AlbumsFragment$AlbumData;-><init>()V

    .line 353
    .local v2, "album_user_photos":Lcom/perm/kate/AlbumsFragment$AlbumData;
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    .line 354
    const v5, 0x7f07048d

    invoke-virtual {p0, v5}, Lcom/perm/kate/AlbumsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    .line 355
    const-string v5, ""

    iput-object v5, v2, Lcom/perm/kate/AlbumsFragment$AlbumData;->description:Ljava/lang/String;

    .line 356
    const-wide/16 v8, -0x1

    iput-wide v8, v2, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    .line 357
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    .line 358
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v2    # "album_user_photos":Lcom/perm/kate/AlbumsFragment$AlbumData;
    :cond_3
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v8, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchAlbums(J)Landroid/database/Cursor;

    move-result-object v4

    .line 362
    .local v4, "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 363
    const-string v5, "album_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 364
    .local v6, "id":J
    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-eqz v5, :cond_6

    :cond_5
    const-wide/16 v8, -0x7

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v8, -0x6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    const-wide/16 v8, -0xf

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 366
    :cond_6
    new-instance v0, Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {v0}, Lcom/perm/kate/AlbumsFragment$AlbumData;-><init>()V

    .line 367
    .local v0, "album":Lcom/perm/kate/AlbumsFragment$AlbumData;
    const-string v5, "thumb_src"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    .line 368
    const-string v5, "title"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/AlbumsFragment;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    .line 369
    const-string v5, "description"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->description:Ljava/lang/String;

    .line 370
    const-string v5, "size"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->size:Ljava/lang/String;

    .line 371
    iput-wide v6, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    .line 373
    iget-wide v8, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    const-wide/16 v10, -0x7

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gez v5, :cond_7

    .line 374
    const v5, 0x7f070492

    invoke-virtual {p0, v5}, Lcom/perm/kate/AlbumsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    .line 375
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    .line 376
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 378
    .end local v0    # "album":Lcom/perm/kate/AlbumsFragment$AlbumData;
    .end local v6    # "id":J
    :cond_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 379
    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/AlbumListAdapter;

    invoke-virtual {v5, v3}, Lcom/perm/kate/AlbumListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AlbumsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/AlbumsFragment$3;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 386
    .end local p0    # "title":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "title":Ljava/lang/String;
    :cond_0
    const-string v0, "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438 "

    const-string v1, "\u0424\u043e\u0442\u043e "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private showAlbumContextMenu(J)V
    .locals 9
    .param p1, "aid"    # J

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070172

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    .line 183
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07002a

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->is_me:Z

    if-eqz v3, :cond_1

    cmp-long v3, p1, v6

    if-gtz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    .line 185
    :cond_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07018d

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070084

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/AlbumsFragment$6;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/perm/kate/AlbumsFragment$6;-><init>(Lcom/perm/kate/AlbumsFragment;Ljava/util/ArrayList;J)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 207
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 208
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 209
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 210
    return-void
.end method

.method private showConfirmDeleteDialog(J)V
    .locals 5
    .param p1, "aid"    # J

    .prologue
    .line 226
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070170

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 228
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/AlbumsFragment$7;

    invoke-direct {v4, p0, p1, p2}, Lcom/perm/kate/AlbumsFragment$7;-><init>(Lcom/perm/kate/AlbumsFragment;J)V

    .line 229
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 236
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 237
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 238
    return-void
.end method

.method private showCreateAlbumAcivity()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    const-string v1, "com.perm.kate.oid"

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumsFragment;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method private showEditActivity(J)V
    .locals 3
    .param p1, "aid"    # J

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 219
    const-string v1, "com.perm.kate.aid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 220
    const-string v1, "com.perm.kate.oid"

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    const-string v1, "com.perm.kate.edit_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumsFragment;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method


# virtual methods
.method public albumCommentsClick(J)V
    .locals 3
    .param p1, "album_id"    # J

    .prologue
    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 285
    const-string v1, "com.perm.kate.album_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumsFragment;->startActivity(Landroid/content/Intent;)V

    .line 288
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 262
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 263
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    :cond_0
    const v2, 0x7f0e0385

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 266
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 299
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    iget-boolean v2, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    if-eqz v2, :cond_1

    .line 300
    const-string v2, "selected_photos"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 301
    .local v1, "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 302
    .local v0, "i":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 303
    const-string v2, "selected_photos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 307
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 310
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->processSharedContent()V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 70
    .local v0, "account_id":J
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.owner_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    .line 71
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/perm/kate/AlbumsFragment;->is_me:Z

    .line 74
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 75
    const-wide/16 v4, -0x1

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.select_mode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    .line 77
    invoke-virtual {p0}, Lcom/perm/kate/AlbumsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.select_for_move"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    .line 79
    if-nez p1, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->refreshOnThread()V

    .line 81
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 73
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 50
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->displayData()V

    .line 53
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 279
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 273
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->showCreateAlbumAcivity()V

    goto :goto_0

    .line 276
    :pswitch_1
    const-wide/16 v2, -0x3e8

    invoke-virtual {p0, v2, v3}, Lcom/perm/kate/AlbumsFragment;->albumCommentsClick(J)V

    goto :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0385
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->refreshOnThread()V

    .line 402
    return-void
.end method
