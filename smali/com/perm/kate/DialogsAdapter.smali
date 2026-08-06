.class public Lcom/perm/kate/DialogsAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    }
.end annotation


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field attachments_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;>;"
        }
    .end annotation
.end field

.field hint:Ljava/lang/String;

.field map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;",
            ">;"
        }
    .end annotation
.end field

.field public me:Lcom/perm/kate/api/User;

.field selectedDialogs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field selected_thread_id:J

.field typing_users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MessagesFragment$TypingInfo;",
            ">;"
        }
    .end annotation
.end field

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Lcom/perm/kate/api/User;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 3
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "me"    # Lcom/perm/kate/api/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/BaseActivity;",
            "Landroid/database/Cursor;",
            "Lcom/perm/kate/api/User;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MessagesFragment$TypingInfo;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, "typing_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MessagesFragment$TypingInfo;>;"
    .local p5, "selectedDialogs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 419
    new-instance v0, Lcom/perm/kate/DialogsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogsAdapter$1;-><init>(Lcom/perm/kate/DialogsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 51
    iput-object p3, p0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->hint:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/perm/kate/DialogsAdapter;->typing_users:Ljava/util/ArrayList;

    .line 54
    iput-object p5, p0, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DialogsAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogsAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method

.method public static getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    const-string v3, ""

    .line 256
    .local v3, "attchmns_text":Ljava/lang/String;
    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1f

    .line 257
    const/4 v12, 0x0

    .line 258
    .local v12, "photo_count":I
    const/16 v16, 0x0

    .line 259
    .local v16, "video_count":I
    const/4 v4, 0x0

    .line 260
    .local v4, "audio_count":I
    const/4 v6, 0x0

    .line 261
    .local v6, "doc_count":I
    const/4 v11, 0x0

    .line 262
    .local v11, "message_count":I
    const/4 v7, 0x0

    .line 263
    .local v7, "geo_count":I
    const/16 v17, 0x0

    .line 264
    .local v17, "wall_count":I
    const/4 v8, 0x0

    .line 265
    .local v8, "gift_count":I
    const/4 v14, 0x0

    .line 266
    .local v14, "sticker_count":I
    const/4 v9, 0x0

    .line 267
    .local v9, "link_count":I
    const/4 v5, 0x0

    .line 268
    .local v5, "comment_count":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Attachment;

    .line 269
    .local v2, "a":Lcom/perm/kate/api/Attachment;
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "photo"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 270
    add-int/lit8 v12, v12, 0x1

    .line 271
    :cond_1
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "video"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 272
    add-int/lit8 v16, v16, 0x1

    .line 273
    :cond_2
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 274
    add-int/lit8 v4, v4, 0x1

    .line 275
    :cond_3
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "message"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 276
    add-int/lit8 v11, v11, 0x1

    .line 277
    :cond_4
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "geo"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 278
    add-int/lit8 v7, v7, 0x1

    .line 279
    :cond_5
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "wall"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 280
    add-int/lit8 v17, v17, 0x1

    .line 281
    :cond_6
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "doc"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 282
    add-int/lit8 v6, v6, 0x1

    .line 283
    :cond_7
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "gift"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 284
    add-int/lit8 v8, v8, 0x1

    .line 285
    :cond_8
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "sticker"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 286
    add-int/lit8 v14, v14, 0x1

    .line 287
    :cond_9
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "link"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 288
    add-int/lit8 v9, v9, 0x1

    .line 289
    :cond_a
    iget-object v0, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "wall_reply"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 292
    .end local v2    # "a":Lcom/perm/kate/api/Attachment;
    :cond_b
    if-lez v12, :cond_d

    .line 293
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 294
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_c
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v12, v0, :cond_21

    .line 296
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v12, v0, :cond_20

    .line 298
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f07041e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    :cond_d
    :goto_1
    if-lez v16, :cond_f

    .line 306
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_e

    .line 307
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_24

    .line 309
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_23

    .line 311
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070432

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    :cond_f
    :goto_2
    if-lez v4, :cond_11

    .line 318
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_10

    .line 319
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v4, v0, :cond_27

    .line 321
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v4, v0, :cond_26

    .line 323
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070404

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_11
    :goto_3
    if-lez v6, :cond_13

    .line 330
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_12

    .line 331
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    :cond_12
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v6, v0, :cond_2a

    .line 333
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v6, v0, :cond_29

    .line 335
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f07040b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    :cond_13
    :goto_4
    if-lez v11, :cond_15

    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_14

    .line 343
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    :cond_14
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v11, v0, :cond_2d

    .line 345
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    const/16 v18, 0x5

    move/from16 v0, v18

    if-ge v11, v0, :cond_2c

    .line 347
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070411

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_15
    :goto_5
    if-lez v7, :cond_18

    .line 354
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_16

    .line 355
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    :cond_16
    const v18, 0x7f07037c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 357
    .local v13, "place":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_17

    .line 358
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 359
    :cond_17
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .end local v13    # "place":Ljava/lang/String;
    :cond_18
    if-lez v17, :cond_1a

    .line 362
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_19

    .line 363
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    :cond_19
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070513

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    :cond_1a
    if-lez v8, :cond_1b

    .line 367
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0701af

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    :cond_1b
    if-lez v14, :cond_1d

    .line 370
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1c

    .line 371
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    :cond_1c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0703fb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 374
    :cond_1d
    if-lez v9, :cond_1e

    .line 375
    const v18, 0x7f0702bb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 376
    .local v10, "link_text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2f

    .line 377
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    .end local v10    # "link_text":Ljava/lang/String;
    :cond_1e
    :goto_6
    if-lez v5, :cond_1f

    .line 382
    const v18, 0x7f07044b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 383
    .local v15, "text":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_30

    .line 384
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .end local v4    # "audio_count":I
    .end local v5    # "comment_count":I
    .end local v6    # "doc_count":I
    .end local v7    # "geo_count":I
    .end local v8    # "gift_count":I
    .end local v9    # "link_count":I
    .end local v11    # "message_count":I
    .end local v12    # "photo_count":I
    .end local v14    # "sticker_count":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v16    # "video_count":I
    .end local v17    # "wall_count":I
    :cond_1f
    :goto_7
    return-object v3

    .line 300
    .restart local v4    # "audio_count":I
    .restart local v5    # "comment_count":I
    .restart local v6    # "doc_count":I
    .restart local v7    # "geo_count":I
    .restart local v8    # "gift_count":I
    .restart local v9    # "link_count":I
    .restart local v11    # "message_count":I
    .restart local v12    # "photo_count":I
    .restart local v14    # "sticker_count":I
    .restart local v16    # "video_count":I
    .restart local v17    # "wall_count":I
    :cond_20
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f07041f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 303
    :cond_21
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_22

    const v18, 0x7f07041d

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_22
    const v18, 0x7f07041c

    goto :goto_8

    .line 313
    :cond_23
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070433

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 315
    :cond_24
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_25

    const v18, 0x7f070431

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_25
    const v18, 0x7f070430

    goto :goto_9

    .line 325
    :cond_26
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070405

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 327
    :cond_27
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_28

    const v18, 0x7f070403

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_28
    const v18, 0x7f070402

    goto :goto_a

    .line 337
    :cond_29
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f07040c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 339
    :cond_2a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2b

    const v18, 0x7f07040a

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_2b
    const v18, 0x7f070409

    goto :goto_b

    .line 349
    :cond_2c
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f070412

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 351
    :cond_2d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2e

    const v18, 0x7f070410

    :goto_c
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    :cond_2e
    const v18, 0x7f07040f

    goto :goto_c

    .line 379
    .restart local v10    # "link_text":Ljava/lang/String;
    :cond_2f
    move-object v3, v10

    goto/16 :goto_6

    .line 386
    .end local v10    # "link_text":Ljava/lang/String;
    .restart local v15    # "text":Ljava/lang/String;
    :cond_30
    move-object v3, v15

    goto/16 :goto_7
.end method

.method public static getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "group"    # Lcom/perm/kate/api/Group;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    .line 435
    iget-object v3, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 446
    :goto_0
    return-object v3

    .line 436
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .local v2, "name":Ljava/lang/StringBuilder;
    const-string v3, "first_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "first_name":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 439
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_1
    const-string v3, "last_name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "last_name":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 442
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getSelectedBgByTheme()I
    .locals 1

    .prologue
    .line 481
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v0, :pswitch_data_0

    .line 505
    :pswitch_0
    const v0, 0x7f020256

    :goto_0
    return v0

    .line 483
    :pswitch_1
    const v0, 0x7f02025c

    goto :goto_0

    .line 485
    :pswitch_2
    const v0, 0x7f020261

    goto :goto_0

    .line 487
    :pswitch_3
    const v0, 0x7f02025d

    goto :goto_0

    .line 489
    :pswitch_4
    const v0, 0x7f02025f

    goto :goto_0

    .line 491
    :pswitch_5
    const v0, 0x7f020260

    goto :goto_0

    .line 493
    :pswitch_6
    const v0, 0x7f0201d2

    goto :goto_0

    .line 495
    :pswitch_7
    const v0, 0x7f0201ce

    goto :goto_0

    .line 497
    :pswitch_8
    const v0, 0x7f02025e

    goto :goto_0

    .line 499
    :pswitch_9
    const v0, 0x7f0c003b

    goto :goto_0

    .line 501
    :pswitch_a
    const v0, 0x7f020257

    goto :goto_0

    .line 503
    :pswitch_b
    const v0, 0x7f020262

    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private isTyping(JLjava/lang/Long;)Z
    .locals 13
    .param p1, "chat_id"    # J
    .param p3, "uid"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    .line 243
    iget-object v2, p0, Lcom/perm/kate/DialogsAdapter;->typing_users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessagesFragment$TypingInfo;

    .line 245
    .local v0, "ti":Lcom/perm/kate/MessagesFragment$TypingInfo;
    cmp-long v3, p1, v10

    if-eqz v3, :cond_1

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 250
    .end local v0    # "ti":Lcom/perm/kate/MessagesFragment$TypingInfo;
    :goto_0
    return v1

    .line 247
    .restart local v0    # "ti":Lcom/perm/kate/MessagesFragment$TypingInfo;
    :cond_1
    cmp-long v3, p1, v10

    if-nez v3, :cond_0

    iget-wide v4, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->chat_id:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/perm/kate/MessagesFragment$TypingInfo;->user_id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    goto :goto_0

    .line 250
    .end local v0    # "ti":Lcom/perm/kate/MessagesFragment$TypingInfo;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 415
    invoke-virtual {p0, v0}, Lcom/perm/kate/DialogsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 416
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 417
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 56
    .param p1, "vi"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 62
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    .line 63
    .local v36, "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    const-string v4, "is_out"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    cmp-long v4, v14, v18

    if-nez v4, :cond_7

    const/16 v41, 0x1

    .line 64
    .local v41, "is_out":Z
    :goto_0
    const-string v4, "read_state"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    cmp-long v4, v14, v18

    if-nez v4, :cond_8

    const/16 v47, 0x1

    .line 65
    .local v47, "read_state":Z
    :goto_1
    const-string v4, "chat_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 66
    .local v50, "thread_column_index":I
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 67
    .local v52, "thread_id":J
    invoke-static/range {v52 .. v53}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v30

    .line 68
    .local v30, "chat_id":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    cmp-long v4, v14, v52

    if-nez v4, :cond_9

    .line 69
    invoke-static {}, Lcom/perm/kate/DialogsAdapter;->getSelectedBgByTheme()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    :goto_2
    const v4, 0x7f0e01fe

    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    const v4, 0x7f0e0069

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 78
    const-string v4, "uid"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    .line 80
    .local v54, "uid":Ljava/lang/Long;
    const/16 v33, 0x0

    .line 81
    .local v33, "group":Lcom/perm/kate/api/Group;
    const-wide/16 v14, 0x0

    cmp-long v4, v30, v14

    if-nez v4, :cond_c

    .line 82
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-nez v4, :cond_b

    .line 83
    const-string v4, "photo_medium_rec"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "url_from_user":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/4 v7, 0x1

    const/16 v8, 0x50

    .line 86
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    .line 85
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 107
    .end local v5    # "url_from_user":Ljava/lang/String;
    :cond_0
    :goto_3
    if-eqz v41, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    if-eqz v4, :cond_e

    .line 108
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    iget-object v11, v4, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v12, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/4 v13, 0x1

    const/16 v14, 0x50

    .line 110
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v15

    const/16 v16, 0x1

    .line 109
    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 111
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    :goto_4
    if-eqz v41, :cond_f

    if-nez v47, :cond_f

    .line 119
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 123
    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/perm/kate/DialogsAdapter;->getDisplayName(Landroid/database/Cursor;Lcom/perm/kate/api/Group;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "user_name":Ljava/lang/String;
    const-wide/16 v14, 0x0

    cmp-long v4, v30, v14

    if-nez v4, :cond_10

    .line 125
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 127
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/DialogsAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    :goto_6
    const-string v4, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 137
    .local v42, "long_date":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v6, 0x0

    move-wide/from16 v0, v42

    invoke-static {v4, v0, v1, v6}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v26

    .line 138
    .local v26, "ago_text":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v4, "body"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 143
    .local v48, "text":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "action":Ljava/lang/Integer;
    const/4 v12, 0x0

    .local v12, "action_mid":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 144
    .local v16, "action_text":Ljava/lang/String;
    const-string v4, "action"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 145
    .local v38, "idx1":I
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 147
    :cond_1
    const-string v4, "action_mid"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 148
    .local v39, "idx2":I
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 150
    :cond_2
    const-string v4, "action_text"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v40

    .line 151
    .local v40, "idx3":I
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    move-object/from16 v0, p3

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 153
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/DialogsAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static/range {v10 .. v16}, Lcom/perm/kate/MessageAdapterCore;->getActionMessage(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/utils/UserCache;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 154
    .local v25, "action_message":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static/range {v48 .. v48}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    move-object/from16 v48, v25

    .line 157
    :cond_4
    new-instance v29, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v29

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 158
    .local v29, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v0, v4, v6}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 159
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v4, 0x7f0e01d2

    move-object/from16 v0, p1

    move-object/from16 v1, v48

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    const v4, 0x7f0e011a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 165
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/DialogsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v6, 0x7f0e026f

    move-object/from16 v0, v54

    invoke-virtual {v4, v6, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 168
    const-string v4, "message_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 169
    .local v44, "mid":Ljava/lang/String;
    const v4, 0x7f0e011f

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 171
    const-wide/16 v14, 0x0

    cmp-long v4, v30, v14

    if-nez v4, :cond_15

    .line 172
    const-string v4, "online"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    cmp-long v4, v14, v18

    if-nez v4, :cond_11

    const/4 v4, 0x1

    :goto_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    .line 173
    .local v45, "online":Ljava/lang/Boolean;
    const-string v4, "online_mobile"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    cmp-long v4, v14, v18

    if-nez v4, :cond_12

    const/4 v4, 0x1

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 174
    .local v46, "online_mobile":Ljava/lang/Boolean;
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 175
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    .line 176
    :cond_5
    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 177
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v46, :cond_14

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    const v6, 0x7f020114

    :goto_a
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    .end local v45    # "online":Ljava/lang/Boolean;
    .end local v46    # "online_mobile":Ljava/lang/Boolean;
    :goto_b
    const-string v4, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 183
    .local v20, "_id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 184
    .local v27, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez v27, :cond_6

    .line 185
    const-string v4, "have_attachments"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    cmp-long v4, v14, v18

    if-nez v4, :cond_16

    const/16 v37, 0x1

    .line 186
    .local v37, "have_attachments":Z
    :goto_c
    if-eqz v37, :cond_17

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v4, :cond_17

    .line 187
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 188
    .local v17, "account_id":Ljava/lang/Long;
    sget-object v18, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v24, 0x1

    invoke-virtual/range {v18 .. v24}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v27

    .line 191
    .end local v17    # "account_id":Ljava/lang/Long;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v37    # "have_attachments":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v28

    .line 194
    .local v28, "attchmns_text":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19

    .line 195
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    if-eqz v48, :cond_18

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 197
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 199
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 200
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 201
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 207
    :goto_e
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_f
    const v4, 0x7f0e011b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    .line 217
    .local v51, "typingImage":Landroid/view/View;
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/DialogsAdapter;->isTyping(JLjava/lang/Long;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 218
    const/4 v4, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual/range {v51 .. v51}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 224
    :goto_10
    const-string v4, "unread_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 225
    .local v55, "unread_count":I
    if-lez v55, :cond_1b

    .line 226
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    :goto_11
    const v4, 0x7f0e0097

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->selectedDialogs:Ljava/util/HashSet;

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .end local v10    # "action":Ljava/lang/Integer;
    .end local v11    # "user_name":Ljava/lang/String;
    .end local v12    # "action_mid":Ljava/lang/Long;
    .end local v16    # "action_text":Ljava/lang/String;
    .end local v20    # "_id":J
    .end local v25    # "action_message":Ljava/lang/String;
    .end local v26    # "ago_text":Ljava/lang/String;
    .end local v27    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v28    # "attchmns_text":Ljava/lang/String;
    .end local v29    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v30    # "chat_id":J
    .end local v33    # "group":Lcom/perm/kate/api/Group;
    .end local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .end local v38    # "idx1":I
    .end local v39    # "idx2":I
    .end local v40    # "idx3":I
    .end local v41    # "is_out":Z
    .end local v42    # "long_date":J
    .end local v44    # "mid":Ljava/lang/String;
    .end local v47    # "read_state":Z
    .end local v48    # "text":Ljava/lang/String;
    .end local v50    # "thread_column_index":I
    .end local v51    # "typingImage":Landroid/view/View;
    .end local v52    # "thread_id":J
    .end local v54    # "uid":Ljava/lang/Long;
    .end local v55    # "unread_count":I
    :goto_13
    return-void

    .line 63
    .restart local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    :cond_7
    const/16 v41, 0x0

    goto/16 :goto_0

    .line 64
    .restart local v41    # "is_out":Z
    :cond_8
    const/16 v47, 0x0

    goto/16 :goto_1

    .line 70
    .restart local v30    # "chat_id":J
    .restart local v47    # "read_state":Z
    .restart local v50    # "thread_column_index":I
    .restart local v52    # "thread_id":J
    :cond_9
    if-nez v47, :cond_a

    if-nez v41, :cond_a

    .line 71
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    .line 231
    .end local v30    # "chat_id":J
    .end local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .end local v41    # "is_out":Z
    .end local v47    # "read_state":Z
    .end local v50    # "thread_column_index":I
    .end local v52    # "thread_id":J
    :catch_0
    move-exception v49

    .line 232
    .local v49, "th":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v4, v4, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v4}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 233
    invoke-virtual/range {v49 .. v49}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 234
    invoke-static/range {v49 .. v49}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_13

    .line 73
    .end local v49    # "th":Ljava/lang/OutOfMemoryError;
    .restart local v30    # "chat_id":J
    .restart local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .restart local v41    # "is_out":Z
    .restart local v47    # "read_state":Z
    .restart local v50    # "thread_column_index":I
    .restart local v52    # "thread_id":J
    :cond_a
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/perm/kate/MessageAdapterCore;->getBgByTheme(Z)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 235
    .end local v30    # "chat_id":J
    .end local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .end local v41    # "is_out":Z
    .end local v47    # "read_state":Z
    .end local v50    # "thread_column_index":I
    .end local v52    # "thread_id":J
    :catch_1
    move-exception v49

    .line 236
    .local v49, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    invoke-static/range {v49 .. v49}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v4}, Lcom/perm/kate/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v4, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_13

    .line 88
    .end local v49    # "th":Ljava/lang/Throwable;
    .restart local v30    # "chat_id":J
    .restart local v33    # "group":Lcom/perm/kate/api/Group;
    .restart local v36    # "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    .restart local v41    # "is_out":Z
    .restart local v47    # "read_state":Z
    .restart local v50    # "thread_column_index":I
    .restart local v52    # "thread_id":J
    .restart local v54    # "uid":Ljava/lang/Long;
    :cond_b
    :try_start_2
    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v34

    .line 91
    .local v34, "group_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v33

    .line 92
    if-eqz v33, :cond_0

    .line 93
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/16 v10, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto/16 :goto_3

    .line 97
    .end local v34    # "group_id":J
    :cond_c
    const-string v4, "chat_photo_100"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "chat_photo_100":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 99
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/4 v9, 0x1

    const/16 v10, 0x50

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto/16 :goto_3

    .line 101
    :cond_d
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchChatAvatars(J)Ljava/util/ArrayList;

    move-result-object v9

    .line 102
    .local v9, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    move-object/from16 v0, v36

    iget-object v10, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const/16 v11, 0x50

    const/16 v12, 0x50

    .line 103
    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v13

    invoke-virtual/range {v8 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V

    goto/16 :goto_3

    .line 114
    .end local v7    # "chat_photo_100":Ljava/lang/String;
    .end local v9    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_4

    .line 121
    :cond_f
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 129
    .restart local v11    # "user_name":Ljava/lang/String;
    :cond_10
    const-string v4, "chat_title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 130
    .local v32, "chat_title":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 132
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    const v6, 0x7f07020b

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 172
    .end local v32    # "chat_title":Ljava/lang/String;
    .restart local v10    # "action":Ljava/lang/Integer;
    .restart local v12    # "action_mid":Ljava/lang/Long;
    .restart local v16    # "action_text":Ljava/lang/String;
    .restart local v25    # "action_message":Ljava/lang/String;
    .restart local v26    # "ago_text":Ljava/lang/String;
    .restart local v29    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v38    # "idx1":I
    .restart local v39    # "idx2":I
    .restart local v40    # "idx3":I
    .restart local v42    # "long_date":J
    .restart local v44    # "mid":Ljava/lang/String;
    .restart local v48    # "text":Ljava/lang/String;
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 173
    .restart local v45    # "online":Ljava/lang/Boolean;
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 176
    .restart local v46    # "online_mobile":Ljava/lang/Boolean;
    :cond_13
    const/16 v4, 0x8

    goto/16 :goto_9

    .line 177
    :cond_14
    const v6, 0x7f020112

    goto/16 :goto_a

    .line 179
    .end local v45    # "online":Ljava/lang/Boolean;
    .end local v46    # "online_mobile":Ljava/lang/Boolean;
    :cond_15
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 185
    .restart local v20    # "_id":J
    .restart local v27    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    :cond_16
    const/16 v37, 0x0

    goto/16 :goto_c

    .line 190
    .restart local v37    # "have_attachments":Z
    :cond_17
    new-instance v27, Ljava/util/ArrayList;

    .end local v27    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .restart local v27    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    goto/16 :goto_d

    .line 203
    .end local v37    # "have_attachments":Z
    .restart local v28    # "attchmns_text":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_e

    .line 209
    :cond_19
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_f

    .line 221
    .restart local v51    # "typingImage":Landroid/view/View;
    :cond_1a
    const/16 v4, 0x8

    move-object/from16 v0, v51

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 229
    .restart local v55    # "unread_count":I
    :cond_1b
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_11

    .line 230
    :cond_1c
    const/16 v4, 0x8

    goto/16 :goto_12
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 458
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 461
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 394
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 395
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030059

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 396
    .local v2, "v":Landroid/view/View;
    new-instance v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;

    invoke-direct {v0}, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;-><init>()V

    .line 397
    .local v0, "h":Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;
    iget-object v3, p0, Lcom/perm/kate/DialogsAdapter;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const v3, 0x7f0e011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->messageBody:Landroid/widget/TextView;

    .line 399
    const v3, 0x7f0e0118

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photo:Landroid/widget/ImageView;

    .line 400
    const v3, 0x7f0e011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->photoMe:Landroid/widget/ImageView;

    .line 401
    const v3, 0x7f0e011c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutMe:Landroid/view/View;

    .line 402
    const v3, 0x7f0e011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->layoutTextMe:Landroid/widget/LinearLayout;

    .line 403
    const v3, 0x7f0e011a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->name:Landroid/widget/TextView;

    .line 404
    const v3, 0x7f0e0119

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->multichatIcon:Landroid/view/View;

    .line 405
    const v3, 0x7f0e0076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->ago:Landroid/widget/TextView;

    .line 406
    const v3, 0x7f0e00ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->bullet:Landroid/view/View;

    .line 407
    const v3, 0x7f0e0120

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->attachmentsText:Landroid/widget/TextView;

    .line 408
    const v3, 0x7f0e0121

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    .line 409
    iget-object v3, v0, Lcom/perm/kate/DialogsAdapter$ViewHolderDialogs;->unreadCount:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v4

    sget-boolean v5, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    sget-boolean v6, Lcom/perm/kate/KApplication;->isTablet:Z

    invoke-virtual {v4, v5, v6}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    return-object v2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/perm/kate/DialogsAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 452
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 453
    return-void
.end method
