.class public Lcom/perm/kate/DialogsAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialogsAdapter.java"


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field attachments_cache:Ljava/util/HashMap;

.field private checkboxClickListener:Landroid/view/View$OnClickListener;

.field hint:Ljava/lang/String;

.field map:Ljava/util/WeakHashMap;

.field public me:Lcom/perm/kate/api/User;

.field selectedDialogs:Ljava/util/HashSet;

.field selected_thread_id:J

.field show_checks:Z

.field typing_users:Ljava/util/ArrayList;

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$Zg225bpBcH8pFyoVKeKLEIEKwrY(Lcom/perm/kate/DialogsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/DialogsAdapter;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Lcom/perm/kate/api/User;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 2

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 45
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    .line 47
    new-instance p2, Lcom/perm/utils/UserCache;

    invoke-direct {p2}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/DialogsAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 50
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    .line 55
    iput-boolean v0, p0, Lcom/perm/kate/DialogsAdapter;->show_checks:Z

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 469
    new-instance p2, Lcom/perm/kate/DialogsAdapter$1;

    invoke-direct {p2, p0}, Lcom/perm/kate/DialogsAdapter$1;-><init>(Lcom/perm/kate/DialogsAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/DialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 558
    new-instance p2, Lcom/perm/kate/DialogsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/perm/kate/DialogsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/DialogsAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/DialogsAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p1, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 61
    iput-object p3, p0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p3, 0x7f0f0236

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/DialogsAdapter;->hint:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/perm/kate/DialogsAdapter;->typing_users:Ljava/util/ArrayList;

    .line 64
    iput-object p5, p0, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DialogsAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method

.method public static getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    if-eqz p1, :cond_36

    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 293
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/perm/kate/api/Attachment;

    .line 294
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v16, v1

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 296
    :cond_0
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 298
    :cond_1
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v17, 0x0

    cmp-long v19, v0, v17

    if-lez v19, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 302
    :cond_4
    :goto_2
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 304
    :cond_5
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "geo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v7, v7, 0x1

    .line 306
    :cond_6
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v9, v9, 0x1

    .line 308
    :cond_7
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v10, v10, 0x1

    .line 310
    :cond_8
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 312
    :cond_9
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v12, v12, 0x1

    .line 314
    :cond_a
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    add-int/lit8 v13, v13, 0x1

    .line 316
    :cond_b
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "wall_reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v14, v14, 0x1

    .line 318
    :cond_c
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    add-int/lit8 v15, v15, 0x1

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_e
    move-object/from16 v16, v1

    if-lez v3, :cond_f

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0421

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_f
    move-object/from16 v2, p0

    move-object/from16 v1, v16

    :goto_3
    const-string v3, " "

    const-string v0, ", "

    move/from16 v16, v15

    if-lez v4, :cond_14

    .line 325
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_10

    .line 326
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_10
    const/4 v15, 0x1

    if-le v4, v15, :cond_12

    .line 328
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x5

    if-ge v4, v15, :cond_11

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04b2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 332
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04b3

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 335
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    const v1, 0x7f0f04b1

    goto :goto_4

    :cond_13
    const v1, 0x7f0f04b0

    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_14
    :goto_5
    if-lez v5, :cond_19

    .line 338
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_15
    const/4 v4, 0x1

    if-le v5, v4, :cond_17

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    if-ge v5, v4, :cond_16

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04c4

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 345
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04c5

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 347
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    const v1, 0x7f0f04c3

    goto :goto_6

    :cond_18
    const v1, 0x7f0f051d

    :goto_6
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_19
    :goto_7
    if-lez v8, :cond_1e

    .line 350
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1a
    const/4 v4, 0x1

    if-le v8, v4, :cond_1c

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    if-ge v8, v4, :cond_1b

    .line 355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f049b

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 357
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f049c

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 359
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    const v1, 0x7f0f049a

    goto :goto_8

    :cond_1d
    const v1, 0x7f0f0499

    :goto_8
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1e
    :goto_9
    if-lez v10, :cond_23

    .line 362
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1f
    const/4 v4, 0x1

    if-le v10, v4, :cond_21

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    if-ge v10, v4, :cond_20

    .line 367
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04a2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 369
    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04a3

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 371
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    const v1, 0x7f0f04a1

    goto :goto_a

    :cond_22
    const v1, 0x7f0f04a0

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_23
    :goto_b
    if-lez v6, :cond_28

    .line 374
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_24

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_24
    const/4 v4, 0x1

    if-le v6, v4, :cond_26

    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    if-ge v6, v3, :cond_25

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04a8

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 381
    :cond_25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f04a9

    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 383
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_27

    const v1, 0x7f0f04a7

    goto :goto_c

    :cond_27
    const v1, 0x7f0f04a6

    :goto_c
    invoke-virtual {v2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_28
    :goto_d
    if-lez v7, :cond_2b

    .line 386
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_29

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_29
    const v3, 0x7f0f03e6

    .line 388
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    .line 390
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 391
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2b
    if-lez v9, :cond_2d

    .line 394
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2c

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    :cond_2c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f059e

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2d
    if-lez v11, :cond_2e

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f020b

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2e
    if-lez v12, :cond_30

    .line 402
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0490

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_30
    if-lez v13, :cond_32

    const v3, 0x7f0f0317

    .line 407
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_31

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_31
    move-object v1, v3

    :cond_32
    :goto_e
    if-lez v14, :cond_34

    const v3, 0x7f0f04dd

    .line 414
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 415
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_33

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_33
    move-object v1, v3

    :cond_34
    :goto_f
    if-lez v16, :cond_36

    const v3, 0x7f0f03f7

    .line 421
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_35

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_35
    move-object v1, v2

    :cond_36
    :goto_10
    return-object v1
.end method

.method public static getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 485
    iget-object p0, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    return-object p0

    .line 486
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "first_name"

    .line 487
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "last_name"

    .line 490
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 492
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectedBgByTheme()I
    .locals 1

    .line 530
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f08027f

    return v0

    :sswitch_0
    const v0, 0x7f08028b

    return v0

    :sswitch_1
    const v0, 0x7f08028a

    return v0

    :sswitch_2
    const v0, 0x7f080289

    return v0

    :sswitch_3
    const v0, 0x7f080280

    return v0

    :sswitch_4
    const v0, 0x7f08006c

    return v0

    :sswitch_5
    const v0, 0x7f060065

    return v0

    :sswitch_6
    const v0, 0x7f080288

    return v0

    :sswitch_7
    const v0, 0x7f080287

    return v0

    :sswitch_8
    const v0, 0x7f080286

    return v0

    :sswitch_9
    const v0, 0x7f080285

    return v0

    :sswitch_a
    const v0, 0x7f080063

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_a
        0x7f1000c7 -> :sswitch_9
        0x7f1000c9 -> :sswitch_8
        0x7f1000cb -> :sswitch_7
        0x7f1000d1 -> :sswitch_6
        0x7f1000d3 -> :sswitch_5
        0x7f1000d5 -> :sswitch_4
        0x7f1000d7 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method private isTyping(JLjava/lang/Long;)Z
    .locals 10

    .line 267
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->typing_users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MessagesFragment$TypingInfo;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-eqz v7, :cond_1

    .line 269
    iget-wide v7, v1, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    cmp-long v9, v7, v3

    if-eqz v9, :cond_1

    cmp-long v9, p1, v7

    if-nez v9, :cond_1

    return v2

    :cond_1
    cmp-long v7, p1, v5

    if-nez v7, :cond_0

    .line 271
    iget-wide v5, v1, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/perm/kate/MessagesFragment$TypingInfo;->user_id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    .line 559
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 561
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    check-cast v0, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0}, Lcom/perm/kate/MembersActivity;->selected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 567
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 464
    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 465
    invoke-virtual {p0, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 466
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 73
    :try_start_0
    iget-object v6, v1, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    const-string v7, "is_out"

    .line 74
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-nez v12, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v8, "read_state"

    .line 75
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v12, "chat_id"

    .line 76
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 77
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 78
    invoke-static {v12, v13}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v14

    .line 79
    iget-wide v9, v1, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    cmp-long v17, v9, v12

    if-nez v17, :cond_2

    .line 80
    invoke-static {}, Lcom/perm/kate/DialogsAdapter;->getSelectedBgByTheme()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    .line 82
    invoke-static {v11}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 84
    :cond_3
    invoke-static {v5}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    const v9, 0x7f09013d

    .line 85
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v9, 0x7f09005d

    .line 86
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v9, "uid"

    .line 89
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v17, 0x0

    cmp-long v19, v14, v17

    if-nez v19, :cond_5

    .line 93
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v10, "photo_medium_rec"

    .line 94
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v20

    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v23, 0x1

    const/16 v24, 0x50

    .line 97
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v25

    const/16 v26, 0x1

    move-object/from16 v22, v10

    .line 96
    invoke-virtual/range {v20 .. v26}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    move-wide/from16 v22, v12

    goto :goto_3

    .line 99
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v22, v12

    invoke-static/range {v20 .. v21}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v11

    .line 102
    sget-object v13, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13, v11, v12}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 104
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v24

    iget-object v12, v11, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v13, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v27, 0x1

    const/16 v28, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    invoke-virtual/range {v24 .. v30}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_4

    :cond_5
    move-wide/from16 v22, v12

    const-string v11, "chat_photo_100"

    .line 108
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 109
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 110
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v24

    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v27, 0x1

    const/16 v28, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v26, v11

    invoke-virtual/range {v24 .. v30}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_3

    .line 112
    :cond_6
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v11, v14, v15}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v25

    .line 113
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v24

    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v27, 0x50

    const/16 v28, 0x50

    .line 114
    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v29

    move-object/from16 v26, v11

    invoke-virtual/range {v24 .. v29}, Lcom/perm/kate/ImageLoader;->DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V

    :goto_3
    const/4 v11, 0x0

    :cond_7
    :goto_4
    const/16 v12, 0x8

    if-eqz v7, :cond_8

    .line 118
    iget-object v13, v1, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    if-eqz v13, :cond_8

    .line 119
    iget-object v13, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    invoke-virtual {v13, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v24

    iget-object v13, v1, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v13, v13, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/16 v27, 0x1

    const/16 v28, 0x50

    .line 121
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v29

    const/16 v30, 0x1

    move-object/from16 v25, v13

    move-object/from16 v26, v10

    .line 120
    invoke-virtual/range {v24 .. v30}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 122
    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/16 v13, 0x10

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_5

    .line 125
    :cond_8
    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/16 v13, 0x30

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setGravity(I)V

    :goto_5
    if-eqz v7, :cond_9

    if-nez v8, :cond_9

    .line 130
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v13, 0x0

    goto :goto_6

    .line 132
    :cond_9
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :goto_6
    invoke-static {v4, v11}, Lcom/perm/kate/DialogsAdapter;->getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v7

    cmp-long v11, v14, v17

    if-nez v11, :cond_a

    .line 137
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/perm/kate/DialogsAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v10, v7

    goto :goto_7

    :cond_a
    const-string v10, "chat_title"

    .line 140
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 141
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v13, 0x7f0f0265

    invoke-virtual {v3, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_7
    const-string v11, "fixed"

    .line 146
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_b

    .line 150
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    cmp-long v11, v24, v17

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    const-string v13, "date"

    .line 153
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v31, v10

    .line 154
    iget-object v10, v1, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v10, v12, v13, v5}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v10

    if-eqz v11, :cond_c

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \u2605"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 157
    :cond_c
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v11, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_d

    const-string v8, ""

    goto :goto_9

    :cond_d
    const-string v8, ", \u043d\u0435 \u043f\u0440\u043e\u0447\u0438\u0442\u0430\u043d\u043e"

    :goto_9
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v8, "body"

    .line 161
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "action"

    .line 165
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 166
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_e

    .line 167
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v24, v10

    goto :goto_a

    :cond_e
    const/16 v24, 0x0

    :goto_a
    const-string v10, "action_mid"

    .line 168
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 169
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_f

    .line 170
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v26, v10

    goto :goto_b

    :cond_f
    const/16 v26, 0x0

    :goto_b
    const-string v10, "action_text"

    .line 171
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 172
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_10

    .line 173
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v30, v10

    goto :goto_c

    :cond_10
    const/16 v30, 0x0

    .line 174
    :goto_c
    iget-object v10, v1, Lcom/perm/kate/DialogsAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v25, v7

    move-object/from16 v27, v10

    invoke-static/range {v24 .. v30}, Lcom/perm/kate/MessageAdapterCore;->getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 175
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    move-object v8, v10

    .line 178
    :cond_11
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v11, v1, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v10, v11, v5}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 180
    invoke-static {v3, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    const v10, 0x7f090049

    .line 181
    invoke-virtual {v2, v10, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 183
    invoke-virtual {v2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v8, 0x7f09038f

    .line 184
    invoke-virtual {v2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 186
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/perm/kate/DialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v8, 0x7f090186

    invoke-virtual {v7, v8, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const-string v7, "message_id"

    .line 189
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f09038e

    .line 190
    invoke-virtual {v2, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    cmp-long v7, v14, v17

    if-nez v7, :cond_17

    const-string v7, "online"

    .line 193
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v10, 0x1

    cmp-long v12, v7, v10

    if-nez v12, :cond_12

    const/4 v7, 0x1

    goto :goto_d

    :cond_12
    const/4 v7, 0x0

    :goto_d
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "online_mobile"

    .line 194
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_13

    const/4 v8, 0x1

    goto :goto_e

    :cond_13
    const/4 v8, 0x0

    :goto_e
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 195
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 196
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 197
    :cond_14
    iget-object v10, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    goto :goto_f

    :cond_15
    const/16 v7, 0x8

    :goto_f
    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_16

    const v8, 0x7f0801c6

    goto :goto_10

    :cond_16
    const v8, 0x7f0801c4

    :goto_10
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11

    .line 200
    :cond_17
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_11
    const-string v7, "_id"

    .line 203
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 204
    iget-object v10, v1, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_1a

    const-string v10, "have_attachments"

    .line 206
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v16, v10, v12

    if-nez v16, :cond_18

    const/4 v10, 0x1

    goto :goto_12

    :cond_18
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_19

    .line 207
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v10, :cond_19

    .line 208
    invoke-virtual {v10}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "attachments"

    .line 209
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v10

    goto :goto_13

    .line 211
    :cond_19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 212
    :goto_13
    iget-object v11, v1, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1a
    iget-object v7, v1, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v7, v10}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1c

    .line 216
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1b

    const-string v8, " "

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1b
    const-string v8, "("

    .line 217
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 219
    :cond_1c
    iget-object v7, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0903f5

    .line 222
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 223
    invoke-direct {v1, v14, v15, v9}, Lcom/perm/kate/DialogsAdapter;->isTyping(JLjava/lang/Long;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 227
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_1d

    const v7, 0x7f0802a6

    .line 228
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    :cond_1d
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_14

    :cond_1e
    const/16 v7, 0x8

    .line 232
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    const-string v3, "unread_count"

    .line 235
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1f

    .line 237
    iget-object v4, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v4, 0x8

    goto :goto_15

    .line 240
    :cond_1f
    iget-object v3, v6, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :goto_15
    iget-boolean v3, v1, Lcom/perm/kate/DialogsAdapter;->show_checks:Z

    if-nez v3, :cond_21

    const v3, 0x7f090146

    .line 242
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, v1, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v12, 0x0

    goto :goto_16

    :cond_20
    const/16 v12, 0x8

    :goto_16
    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_21
    iget-boolean v3, v1, Lcom/perm/kate/DialogsAdapter;->show_checks:Z

    if-eqz v3, :cond_22

    const v3, 0x7f0900ba

    .line 245
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 246
    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 247
    iget-object v3, v1, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x1

    .line 250
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 252
    iget-object v3, v1, Lcom/perm/kate/DialogsAdapter;->checkboxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v7, v31

    .line 253
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 260
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 262
    iget-object v3, v1, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_17

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 256
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v3, v3, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v3}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 257
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 258
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_22
    :goto_17
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 574
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 571
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 508
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 510
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 511
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 433
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0063

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 435
    new-instance p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    invoke-direct {p2}, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;-><init>()V

    .line 436
    iget-object p3, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p3, 0x7f09038e

    .line 437
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const p3, 0x7f090183

    .line 438
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const p3, 0x7f090226

    .line 439
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const p3, 0x7f09038f

    .line 441
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    const p3, 0x7f09038c

    .line 442
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    const p3, 0x7f09009a

    .line 443
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    const p3, 0x7f0903fe

    .line 444
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    .line 445
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p2

    sget-boolean v1, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    sget-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    invoke-virtual {p2, v1, v2}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    iget-boolean p2, p0, Lcom/perm/kate/DialogsAdapter;->show_checks:Z

    if-eqz p2, :cond_1

    const p2, 0x7f090311

    .line 448
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 454
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge p3, v1, :cond_1

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result p3

    if-nez p3, :cond_1

    .line 455
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 457
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0x545455

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 502
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
