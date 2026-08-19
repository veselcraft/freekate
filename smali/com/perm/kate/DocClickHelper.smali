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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/perm/kate/DocClickHelper$3;

    iget-object v1, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DocClickHelper$3;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    .line 31
    iput-object p1, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DocClickHelper;->fixTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/DocClickHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p10}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/DocClickHelper;->showEditDocDialog(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/DocClickHelper;JJ)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/DocClickHelper;->deleteDoc(JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/DocClickHelper;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/DocClickHelper;->editDoc(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/DocClickHelper;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    return-object p0
.end method

.method private deleteDoc(JJ)V
    .locals 7

    .line 120
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/perm/kate/db/DataHelper;->deleteDoc(JJ)Z

    .line 121
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->callback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0}, Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;->docDeleted()V

    .line 123
    :cond_0
    new-instance v0, Lcom/perm/kate/DocClickHelper$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/DocClickHelper$2;-><init>(Lcom/perm/kate/DocClickHelper;JJ)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editDoc(JJLjava/lang/String;)V
    .locals 10

    .line 167
    new-instance v8, Lcom/perm/kate/DocClickHelper$5;

    iget-object v2, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p3

    move-wide v5, p1

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/DocClickHelper$5;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/app/Activity;JJLjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 186
    new-instance v9, Lcom/perm/kate/DocClickHelper$6;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/DocClickHelper$6;-><init>(Lcom/perm/kate/DocClickHelper;JJLjava/lang/String;Lcom/perm/kate/session/Callback;)V

    .line 191
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fixTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "gif"

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".gif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v3, p1

    move-object v2, p2

    move-object v1, p3

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "jpg"

    .line 106
    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "jpeg"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "png"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "gif"

    .line 109
    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 113
    new-instance v4, Lcom/perm/utils/DownloadManagerHelper;

    invoke-direct {v4}, Lcom/perm/utils/DownloadManagerHelper;-><init>()V

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/DocClickHelper;->fixTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v4, p1, v2, p3, v5}, Lcom/perm/utils/DownloadManagerHelper;->downloadDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_2

    .line 115
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 110
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/GifViewActivity;->startGifActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    move-object/from16 v4, p10

    invoke-static {p1, v1, p2, v4}, Lcom/perm/kate/Helper;->openPhoto(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private showEditDocDialog(JJLjava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object/from16 v0, p5

    .line 138
    iget-object v1, v7, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c001f

    const/4 v8, 0x0

    .line 139
    invoke-virtual {v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09011d

    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0f04e7

    .line 141
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 146
    :cond_0
    new-instance v9, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, v7, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f01ec

    .line 147
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0f02a6

    new-instance v12, Lcom/perm/kate/DocClickHelper$4;

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/DocClickHelper$4;-><init>(Lcom/perm/kate/DocClickHelper;Landroid/widget/EditText;JJ)V

    .line 148
    invoke-virtual {v10, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 160
    invoke-virtual {v0, v1, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 162
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 163
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 11

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v10, p8

    .line 36
    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public click(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 40
    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/DocClickHelper;->openDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createContextMenu(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 16

    .line 44
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01eb

    const/4 v13, 0x1

    invoke-direct {v0, v1, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f03a9

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    .line 49
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f003b

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01db

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f023a

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p8, :cond_1

    .line 53
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f01ec

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v1, 0x7f0f00ba

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    new-instance v14, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/perm/kate/DocClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v14, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-static {v12}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v10, Lcom/perm/kate/DocClickHelper$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object v13, v10

    move-object/from16 v10, p9

    move-object v15, v11

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/perm/kate/DocClickHelper$1;-><init>(Lcom/perm/kate/DocClickHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v13}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 90
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 94
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    return v13
.end method
