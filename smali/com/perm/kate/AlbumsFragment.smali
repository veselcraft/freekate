.class public Lcom/perm/kate/AlbumsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "AlbumsFragment.java"


# instance fields
.field private album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

.field private btn_clear:Landroid/widget/ImageButton;

.field callback:Lcom/perm/kate/session/Callback;

.field private callback_delete:Lcom/perm/kate/session/Callback;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private gid:Ljava/lang/Long;

.field private is_me:Z

.field private lv_album_list:Landroid/widget/GridView;

.field private owner_id:Ljava/lang/Long;

.field private select_for_move:Z

.field private select_for_share:Z

.field private select_mode:Z

.field uri_shared:Landroid/net/Uri;

.field uris_shared:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$2iYEX1ykqg4TFxkQpSdWHeDFY5U(Lcom/perm/kate/AlbumsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumsFragment;->lambda$reorderPhotoInThread$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HRJ0jjC0BoXepCPtZibhHchHeEM(Lcom/perm/kate/AlbumsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumsFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iuj8NmpqPRfYWUIY9f7w5b8G1sM(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->lambda$reorderPhoto$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$omOJ06veQe-F9dEb2en_93fGp5k(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requery()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    .line 46
    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    .line 49
    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 114
    new-instance v0, Lcom/perm/kate/AlbumsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AlbumsFragment$2;-><init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 143
    new-instance v0, Lcom/perm/kate/AlbumsFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$3;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 230
    new-instance v0, Lcom/perm/kate/AlbumsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$5;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 333
    new-instance v0, Lcom/perm/kate/AlbumsFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AlbumsFragment$9;-><init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 477
    new-instance v0, Lcom/perm/kate/AlbumsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$10;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->copyPhotoAlbumLink(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->deleteAlbum(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/AlbumsFragment;)Ljava/lang/Long;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/AlbumsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/AlbumsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requery()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/AlbumsFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/AlbumsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AlbumsFragment;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumsFragment;->reorderPhotoInThread(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    return p0
.end method

.method static synthetic access$400(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/AlbumsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/AlbumsFragment;)Landroid/widget/GridView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/AlbumsFragment;JLcom/perm/kate/AlbumsFragment$AlbumData;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AlbumsFragment;->showAlbumContextMenu(JLcom/perm/kate/AlbumsFragment$AlbumData;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->showConfirmDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/AlbumsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumsFragment;->showEditActivity(J)V

    return-void
.end method

.method private copyPhotoAlbumLink(J)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/Helper;->copyPhotoAlbumLink(JJLandroid/content/Context;)V

    return-void
.end method

.method private deleteAlbum(J)V
    .locals 3

    .line 321
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 322
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteAlbum(J)Z

    .line 323
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V

    .line 324
    new-instance v0, Lcom/perm/kate/AlbumsFragment$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/AlbumsFragment$8;-><init>(Lcom/perm/kate/AlbumsFragment;J)V

    .line 330
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 104
    :try_start_0
    new-instance v0, Lcom/perm/kate/AlbumListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perm/kate/AlbumListAdapter;-><init>(Landroid/app/Activity;)V

    .line 105
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->requeryOnUiThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 109
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment;->filterText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$reorderPhoto$2()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/AlbumListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$reorderPhotoInThread$1(I)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumsFragment;->reorderPhoto(I)V

    return-void
.end method

.method private processSharedContent()V
    .locals 6

    .line 390
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "android.intent.extra.STREAM"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v4, "android.intent.action.SEND"

    .line 392
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    iput-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 395
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/perm/kate/AlbumsFragment;->uri_shared:Landroid/net/Uri;

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    .line 397
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Kate.AlbumsFragment"

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.getType() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iput-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    .line 401
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->uris_shared:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 69
    new-instance v0, Lcom/perm/kate/AlbumsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumsFragment$1;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reorderPhoto(I)V
    .locals 14

    const/4 v0, 0x0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/AlbumListAdapter;

    iget-object v1, v1, Lcom/perm/kate/AlbumListAdapter;->albums:Ljava/util/ArrayList;

    .line 186
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 189
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/AlbumsFragment$AlbumData;

    iget-wide v3, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    .line 190
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/AlbumsFragment$AlbumData;

    iget-wide v3, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v11, v0

    .line 191
    :goto_0
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 193
    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-gt p1, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 213
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    iget-wide v8, p1, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    .line 216
    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    const/4 p1, 0x1

    .line 218
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 219
    new-instance v12, Lcom/perm/kate/AlbumsFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {v12, p0, p1}, Lcom/perm/kate/AlbumsFragment$4;-><init>(Lcom/perm/kate/AlbumsFragment;Landroid/app/Activity;)V

    .line 220
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual/range {v5 .. v13}, Lcom/perm/kate/session/Session;->reorderAlbums(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 221
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album_move="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 226
    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->album_move:Lcom/perm/kate/AlbumsFragment$AlbumData;

    :goto_2
    return-void
.end method

.method private reorderPhotoInThread(I)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/perm/kate/AlbumsFragment;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requery()V
    .locals 14

    .line 411
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 414
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->filterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 419
    iget-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 420
    new-instance v3, Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {v3}, Lcom/perm/kate/AlbumsFragment$AlbumData;-><init>()V

    .line 421
    iput-object v4, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    const v5, 0x7f0f0048

    .line 422
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    const-wide/16 v5, -0x3e8

    .line 424
    iput-wide v5, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    const/4 v5, 0x1

    .line 425
    iput-boolean v5, v3, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    .line 426
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 430
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v7, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/perm/kate/db/DataHelper;->fetchAlbums(J)Landroid/database/Cursor;

    move-result-object v3

    .line 431
    :cond_2
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "album_id"

    .line 432
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 433
    iget-boolean v9, p0, Lcom/perm/kate/AlbumsFragment;->select_for_share:Z

    const-wide/16 v10, -0x7

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-eqz v9, :cond_4

    :cond_3
    cmp-long v9, v7, v10

    if-eqz v9, :cond_2

    const-wide/16 v12, -0x6

    cmp-long v9, v7, v12

    if-eqz v9, :cond_2

    const-wide/16 v12, -0xf

    cmp-long v9, v7, v12

    if-eqz v9, :cond_2

    const-wide/16 v12, -0x2328

    cmp-long v9, v7, v12

    if-nez v9, :cond_4

    goto :goto_0

    .line 435
    :cond_4
    new-instance v9, Lcom/perm/kate/AlbumsFragment$AlbumData;

    invoke-direct {v9}, Lcom/perm/kate/AlbumsFragment$AlbumData;-><init>()V

    const-string v12, "thumb_src"

    .line 436
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->photo:Ljava/lang/String;

    const-string v12, "title"

    .line 437
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/perm/kate/AlbumsFragment;->shorten(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    const-string v12, "size"

    .line 439
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->size:Ljava/lang/String;

    .line 440
    iput-wide v7, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->id:J

    cmp-long v12, v7, v10

    if-nez v12, :cond_5

    .line 442
    iget-object v7, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-gez v12, :cond_5

    const v7, 0x7f0f051f

    .line 443
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    :cond_5
    const/4 v7, 0x0

    .line 444
    iput-boolean v7, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->is_simple:Z

    if-nez v2, :cond_6

    .line 445
    iget-object v7, v9, Lcom/perm/kate/AlbumsFragment$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    .line 447
    :cond_6
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 449
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v1, "af_fetchAlbums"

    .line 450
    invoke-static {v5, v6, v1, v4}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 451
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/AlbumListAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/AlbumListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shorten(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "\u0424\u043e\u0442\u043e\u0433\u0440\u0430\u0444\u0438\u0438 "

    const-string v1, "\u0424\u043e\u0442\u043e "

    .line 458
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showAlbumContextMenu(JLcom/perm/kate/AlbumsFragment$AlbumData;)V
    .locals 10

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01db

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    .line 252
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0f0041

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_0
    iget-boolean v3, p0, Lcom/perm/kate/AlbumsFragment;->is_me:Z

    if-eqz v3, :cond_1

    cmp-long v3, p1, v0

    if-gtz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_3

    .line 254
    :cond_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0f01ec

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0f00ba

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_3
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 258
    iget-boolean v5, p0, Lcom/perm/kate/AlbumsFragment;->is_me:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gez v5, :cond_4

    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    neg-long v7, v7

    invoke-virtual {v5, v3, v7, v8}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    cmp-long v4, p1, v0

    if-ltz v4, :cond_6

    if-eqz v3, :cond_6

    .line 260
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f035a

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_6
    new-instance v7, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/AlbumsFragment$6;

    move-object v0, v9

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/AlbumsFragment$6;-><init>(Lcom/perm/kate/AlbumsFragment;Ljava/util/ArrayList;JLcom/perm/kate/AlbumsFragment$AlbumData;)V

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 285
    invoke-virtual {p1, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showConfirmDeleteDialog(J)V
    .locals 3

    .line 306
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 307
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 308
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/AlbumsFragment$7;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/AlbumsFragment$7;-><init>(Lcom/perm/kate/AlbumsFragment;J)V

    const p1, 0x7f0f05a7

    .line 309
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v1, 0x0

    .line 314
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 316
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCreateAlbumAcivity()V
    .locals 3

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.oid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showEditActivity(J)V
    .locals 3

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.aid"

    .line 299
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 300
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    const-string p2, "com.perm.kate.oid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.edit_mode"

    const/4 p2, 0x1

    .line 301
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public albumCommentsClick(J)V
    .locals 3

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AlbumCommentsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.album_id"

    .line 365
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    iget-object p1, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6

    .line 341
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 342
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f0900e1

    .line 345
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 379
    iget-boolean p2, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    if-eqz p2, :cond_0

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 99
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->processSharedContent()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 79
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.owner_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v6, 0x0

    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->is_me:Z

    .line 85
    iget-object v0, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    const-wide/16 v0, -0x1

    .line 86
    iget-object v2, p0, Lcom/perm/kate/AlbumsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AlbumsFragment;->gid:Ljava/lang/Long;

    .line 87
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_mode"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_mode:Z

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_for_move"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AlbumsFragment;->select_for_move:Z

    if-nez p1, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->refreshOnThread()V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0026

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090208

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    .line 57
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment;->album_click_listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object p2, p0, Lcom/perm/kate/AlbumsFragment;->lv_album_list:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment;->album_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p2, 0x7f090132

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/AlbumsFragment;->filterText:Landroid/widget/EditText;

    .line 60
    iget-object p3, p0, Lcom/perm/kate/AlbumsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/AlbumsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 62
    new-instance p3, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/perm/kate/AlbumsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AlbumsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->displayData()V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09003d

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0900e1

    if-eq v0, v1, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->showCreateAlbumAcivity()V

    return v2

    :cond_1
    const-wide/16 v0, -0x3e8

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AlbumsFragment;->albumCommentsClick(J)V

    return v2
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 474
    invoke-direct {p0}, Lcom/perm/kate/AlbumsFragment;->refreshOnThread()V

    return-void
.end method
