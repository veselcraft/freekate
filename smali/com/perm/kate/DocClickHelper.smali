.class public Lcom/perm/kate/DocClickHelper;
.super Ljava/lang/Object;
.source "DocClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

.field private callback_delete:Lcom/perm/kate/session/Callback;

.field private context:Lcom/perm/kate/BaseActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;)V
    .locals 2
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "c"    # Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/perm/kate/DocClickHelper$3;

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DocClickHelper$3;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 31
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # J
    .param p7, "x6"    # J
    .param p9, "x7"    # Ljava/lang/String;
    .param p10, "x8"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct/range {p0 .. p10}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/DocClickHelper;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/DocClickHelper;->deleteDoc(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/DocClickHelper;->showEditDocDialog(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/DocClickHelper;->editDoc(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocClickHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    return-object v0
.end method

.method private deleteDoc(JJ)V
    .locals 7
    .param p1, "doc_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 109
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->deleteDoc(JJ)Z

    .line 110
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    invoke-interface {v0}, Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;->docDeleted()V

    .line 112
    :cond_0
    new-instance v0, Lcom/perm/kate/DocClickHelper$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/DocClickHelper$2;-><init>(Lcom/perm/kate/DocClickHelper;JJ)V

    .line 118
    invoke-virtual {v0}, Lcom/perm/kate/DocClickHelper$2;->start()V

    .line 119
    return-void
.end method

.method private editDoc(JJLjava/lang/String;)V
    .locals 11
    .param p1, "owner_id"    # J
    .param p3, "doc_id"    # J
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v1, Lcom/perm/kate/DocClickHelper$5;

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object v2, p0

    move-wide v4, p3

    move-wide v6, p1

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/DocClickHelper$5;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;JJLjava/lang/String;)V

    .line 174
    .local v1, "edit_callback":Lcom/perm/kate/session/Callback;
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 175
    new-instance v2, Lcom/perm/kate/DocClickHelper$6;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/perm/kate/DocClickHelper$6;-><init>(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;Lcom/perm/kate/session/Callback;)V

    .line 180
    invoke-virtual {v2}, Lcom/perm/kate/DocClickHelper$6;->start()V

    .line 181
    return-void
.end method

.method private openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;
    .param p4, "download"    # Z
    .param p5, "doc_id"    # J
    .param p7, "doc_owner_id"    # J
    .param p9, "access_key"    # Ljava/lang/String;
    .param p10, "preview"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "jpg"

    .line 95
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "jpeg"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "png"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, p10

    invoke-static {p1, v2, p2, v0}, Lcom/perm/kate/Helper;->openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v2, "gif"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object v4, p2

    move-object v5, p1

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v3 .. v10}, Lcom/perm/kate/GifViewActivity;->startGifActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_3
    if-eqz p4, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_4

    .line 102
    new-instance v2, Lcom/perm/utils/DownloadManagerHelper;

    invoke-direct {v2}, Lcom/perm/utils/DownloadManagerHelper;-><init>()V

    invoke-virtual {v2, p1, p2, p3}, Lcom/perm/utils/DownloadManagerHelper;->downloadDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v2}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showEditDocDialog(JJLjava/lang/String;)V
    .locals 15
    .param p1, "doc_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "title"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v3, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 128
    .local v12, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 129
    .local v10, "captcha_view":Landroid/view/View;
    const v3, 0x7f0e006b

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 130
    .local v5, "et_message":Landroid/widget/EditText;
    const v3, 0x7f070457

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 131
    if-eqz p5, :cond_0

    .line 132
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 135
    :cond_0
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v3, 0x7f07018d

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f07024c

    new-instance v3, Lcom/perm/kate/DocClickHelper$4;

    move-object v4, p0

    move-wide/from16 v6, p3

    move-wide/from16 v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/perm/kate/DocClickHelper$4;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/widget/EditText;JJ)V

    .line 137
    invoke-virtual {v13, v14, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07015d

    const/4 v6, 0x0

    .line 149
    invoke-virtual {v3, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v11

    .line 151
    .local v11, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 153
    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;
    .param p4, "doc_id"    # J
    .param p6, "doc_owner_id"    # J
    .param p8, "preview"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "ext"    # Ljava/lang/String;
    .param p4, "doc_id"    # J
    .param p6, "owner_id"    # J
    .param p8, "access_key"    # Ljava/lang/String;
    .param p9, "preview"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p1, "doc_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "ext"    # Ljava/lang/String;
    .param p8, "can_edit_delete"    # Z
    .param p9, "access_key"    # Ljava/lang/String;
    .param p10, "preview"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 46
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07018c

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070344

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 49
    .local v16, "mid_long":J
    cmp-long v2, p3, v16

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070023

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070179

    const/4 v5, 0x4

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0701df

    const/4 v5, 0x7

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    if-eqz p8, :cond_2

    .line 54
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07018d

    const/4 v5, 0x6

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070084

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    new-instance v18, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v19

    new-instance v2, Lcom/perm/kate/DocClickHelper$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/perm/kate/DocClickHelper$1;-><init>(Lcom/perm/kate/DocClickHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v15

    .line 85
    .local v15, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 86
    invoke-virtual {v15}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    .line 87
    .local v14, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    invoke-virtual {v14}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 90
    .end local v14    # "dialog":Landroid/support/v7/app/AlertDialog;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
