.class public abstract Lcom/perm/utils/MarketAlbumsHelper;
.super Ljava/lang/Object;
.source "MarketAlbumsHelper.java"


# direct methods
.method public static synthetic $r8$lambda$5OzMHLKQI1v6NrElsMZAtDKfCpg(JLcom/perm/kate/BaseActivity;ZJJ)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/perm/utils/MarketAlbumsHelper;->lambda$addRemoveToAlbum$4(JLcom/perm/kate/BaseActivity;ZJJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$clz3O0FxcUSJfMRxpNeFpcBLoaw(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Landroid/content/DialogInterface;IZ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/perm/utils/MarketAlbumsHelper;->lambda$showAlbumsDialog$1(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Landroid/content/DialogInterface;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ooIGX5UtctcFzPmGs_7bGEHVw7A(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perm/utils/MarketAlbumsHelper;->lambda$showAlbumsDialog$3(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rY9Kx_kWTAJoQg0B6L04XhcbIxk(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/perm/utils/MarketAlbumsHelper;->lambda$showAlbumsDialogWithCheck$0(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaA2YXhP4WSNxU82sRGfuLpchHo(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/utils/MarketAlbumsHelper;->lambda$showAlbumsDialog$2(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 12
    invoke-static/range {p0 .. p7}, Lcom/perm/utils/MarketAlbumsHelper;->showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJZ)V
    .locals 11

    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda3;

    move-object v1, v10

    move-wide/from16 v2, p5

    move-object v4, p0

    move/from16 v5, p7

    move-wide v6, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda3;-><init>(JLcom/perm/kate/BaseActivity;ZJJ)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic lambda$addRemoveToAlbum$4(JLcom/perm/kate/BaseActivity;ZJJ)V
    .locals 8

    .line 58
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    new-instance v6, Lcom/perm/utils/MarketAlbumsHelper$2;

    invoke-direct {v6, p2}, Lcom/perm/utils/MarketAlbumsHelper$2;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {p2, p0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    if-eqz p3, :cond_0

    .line 67
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-wide v1, p4

    move-wide v3, p6

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->addMarketToAlbum(JJLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-wide v1, p4

    move-wide v3, p6

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->removeMarketFromAlbum(JJLjava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    const/4 p0, 0x0

    .line 70
    invoke-virtual {p2, p0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private static synthetic lambda$showAlbumsDialog$1(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Landroid/content/DialogInterface;IZ)V
    .locals 9

    move-object v0, p5

    move/from16 v1, p7

    .line 50
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/MarketAlbum;

    iget-wide v6, v0, Lcom/perm/kate/api/MarketAlbum;->id:J

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v8, p8

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/MarketAlbumsHelper;->addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJZ)V

    return-void
.end method

.method private static synthetic lambda$showAlbumsDialog$2(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 51
    invoke-interface {p0}, Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;->update()V

    return-void
.end method

.method private static synthetic lambda$showAlbumsDialog$3(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Landroid/content/DialogInterface;)V
    .locals 0

    .line 52
    invoke-interface {p0}, Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;->update()V

    return-void
.end method

.method private static synthetic lambda$showAlbumsDialogWithCheck$0(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V
    .locals 8

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 31
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-wide v2, p1

    move-object v6, p3

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private static showAlbumsDialog(Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12

    move-object/from16 v0, p5

    move-object/from16 v7, p6

    .line 39
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 40
    new-array v8, v1, [Ljava/lang/CharSequence;

    .line 41
    new-array v9, v1, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 43
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/MarketAlbum;

    iget-object v3, v3, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    aput-object v3, v8, v2

    .line 44
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/MarketAlbum;

    iget-wide v3, v3, Lcom/perm/kate/api/MarketAlbum;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v4, p7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v2, p0

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f032f

    .line 48
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;

    move-object v1, v11

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;)V

    .line 49
    invoke-virtual {v10, v8, v9, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0086

    new-instance v3, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;)V

    .line 51
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;)V

    .line 52
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Lcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;)V
    .locals 10

    .line 20
    new-instance v9, Lcom/perm/utils/MarketAlbumsHelper$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/perm/utils/MarketAlbumsHelper$1;-><init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJLcom/perm/utils/MarketAlbumsHelper$MarketAlbumsCallback;Ljava/util/ArrayList;)V

    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2, v9}, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;-><init>(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
