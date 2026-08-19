.class public Lcom/perm/kate/MessageSendQueue;
.super Ljava/lang/Object;
.source "MessageSendQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MessageSendQueue$MessageData;
    }
.end annotation


# instance fields
.field activity:Ljava/lang/ref/WeakReference;

.field current_message:I

.field is_sending:Z

.field messages:Ljava/util/ArrayList;

.field private senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field session:Lcom/perm/kate/session/Session;


# direct methods
.method public constructor <init>(Lcom/perm/kate/session/Session;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    .line 22
    iput v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 105
    new-instance v0, Lcom/perm/kate/MessageSendQueue$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSendQueue$1;-><init>(Lcom/perm/kate/MessageSendQueue;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue;->senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 27
    iput-object p1, p0, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->nextStep()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    return-void
.end method

.method public static fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "wall"

    const-string v6, "doc"

    const-string v7, "video"

    const-string v8, "photo"

    const-string v9, "poll"

    const-string v10, "https://vk.com/sticker/1-"

    const/4 v12, 0x0

    if-eqz v1, :cond_f

    const/4 v13, 0x0

    .line 180
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_f

    .line 181
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x5

    const-string v11, "_"

    if-eqz v14, :cond_3

    .line 183
    :try_start_1
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 184
    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    aget-object v11, v0, v12

    move/from16 v17, v13

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v11, 0x1

    .line 186
    aget-object v0, v0, v11

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 187
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v11, v0, v1, v12, v13}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    move/from16 v12, v17

    .line 193
    :try_start_2
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 195
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "|"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move/from16 v12, v17

    :goto_1
    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 200
    iput-object v8, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 201
    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 202
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v17, v8

    :cond_2
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_3
    move v12, v13

    const-string v1, "audio_playlist"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v13, "link"

    if-eqz v1, :cond_5

    const/16 v1, 0xe

    .line 205
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    aget-object v11, v0, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v1, 0x1

    .line 208
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 209
    new-instance v11, Lcom/perm/kate/api/Link;

    invoke-direct {v11}, Lcom/perm/kate/api/Link;-><init>()V

    move-object/from16 v17, v8

    .line 210
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v14, v15, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAudioAlbum(JJ)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 213
    iget-object v8, v8, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    iput-object v8, v11, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    :cond_4
    const/4 v8, 0x0

    .line 214
    invoke-static {v0, v1, v14, v15, v8}, Lcom/perm/kate/api/AudioAlbum;->getLink(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 218
    iput-object v13, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 219
    iput-object v11, v0, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 220
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v17, v8

    const-string v1, "audio_message"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v8, "audio"

    if-eqz v1, :cond_6

    .line 223
    :try_start_5
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 224
    iput-object v8, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 225
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 226
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :cond_6
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 228
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 230
    aget-object v11, v0, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v1, 0x1

    .line 231
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 232
    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v11, v0, v1, v13, v14}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 234
    iput-object v8, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 235
    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 236
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 237
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 238
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 240
    aget-object v8, v0, v1

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/4 v1, 0x1

    .line 241
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 242
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v0, v1, v13, v14}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object v8

    if-nez v8, :cond_8

    .line 244
    new-instance v11, Ljava/lang/Exception;

    const-string v15, "Failed to fetch video"

    invoke-direct {v11, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video_id="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " owner_id="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 245
    :cond_8
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 246
    iput-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 247
    iput-object v8, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 248
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 249
    :cond_9
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 252
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v8, 0x1

    .line 253
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 254
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchDocFull(JJ)Lcom/perm/kate/api/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 262
    iput-object v6, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 263
    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    .line 264
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string v1, "location:"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 267
    invoke-static {v0}, Lcom/perm/kate/Helper;->parseLocationString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    const-string v2, "geo"

    .line 269
    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 270
    new-instance v2, Lcom/perm/kate/api/Geo;

    invoke-direct {v2}, Lcom/perm/kate/api/Geo;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    const/4 v8, 0x0

    .line 271
    aget-object v11, v0, v8

    iput-object v11, v2, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    const/4 v11, 0x1

    .line 272
    aget-object v0, v0, v11

    iput-object v0, v2, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    .line 273
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    const/4 v8, 0x0

    .line 274
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 276
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 277
    iput-object v5, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 283
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 284
    :cond_c
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ""

    .line 285
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 286
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v11, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v11}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v2, v0, v1, v13, v14}, Lcom/perm/kate/db/DataHelper;->fetchPoll(JJ)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 288
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 289
    iput-object v9, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 290
    iput-object v0, v1, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 291
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    const-string v1, "story"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 294
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 295
    iput-object v13, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 296
    new-instance v2, Lcom/perm/kate/api/Link;

    invoke-direct {v2}, Lcom/perm/kate/api/Link;-><init>()V

    iput-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    .line 297
    sget-object v11, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v13, 0x7f0f0495

    invoke-virtual {v11, v13}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    .line 298
    iget-object v2, v1, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-static {v13}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    .line 299
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_3
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, v17

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    if-eqz v4, :cond_10

    .line 304
    new-instance v0, Lcom/perm/kate/api/Attachment;

    invoke-direct {v0}, Lcom/perm/kate/api/Attachment;-><init>()V

    const-string v1, "sticker"

    .line 305
    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 306
    new-instance v1, Lcom/perm/kate/api/Sticker;

    invoke-direct {v1}, Lcom/perm/kate/api/Sticker;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    .line 307
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    iput-wide v5, v1, Lcom/perm/kate/api/Sticker;->id:J

    .line 308
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-64"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 309
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "-128"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 310
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-256"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 312
    iget-object v1, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_10
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p4, :cond_14

    .line 323
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 324
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 327
    sget-object v9, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v16, 0x0

    cmp-long v7, v5, v16

    if-lez v7, :cond_11

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_5

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    :goto_5
    move-wide v12, v5

    const-wide/16 v14, 0x0

    move-wide v10, v0

    invoke-virtual/range {v9 .. v15}, Lcom/perm/kate/db/DataHelper;->fetchMessage(JJJ)Lcom/perm/kate/api/Message;

    move-result-object v5

    .line 332
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v4, "message"

    cmp-long v9, v6, v16

    if-gez v9, :cond_13

    const/4 v6, 0x0

    .line 333
    :goto_6
    :try_start_6
    iget-object v7, v5, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_13

    .line 334
    iget-object v7, v5, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Attachment;

    iget-object v7, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 335
    iget-object v7, v5, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v6, v9

    :cond_12
    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_6

    :cond_13
    const/4 v7, 0x1

    .line 337
    new-instance v6, Lcom/perm/kate/api/Attachment;

    invoke-direct {v6}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 338
    iput-object v4, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 339
    iput-object v5, v6, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 340
    iget-object v4, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method

.method private nextStep()V
    .locals 2

    .line 151
    :try_start_0
    iget v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 155
    :cond_0
    iget v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private onlyReplyInAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private send()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, v0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    .line 97
    iget-object v1, v0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    iget v2, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 98
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    iput-object v2, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 99
    iget-object v2, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    .line 101
    iget-object v3, v0, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v5, v3

    .line 102
    new-instance v3, Lcom/perm/kate/MessageSender;

    iget-object v6, v2, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    iget-wide v7, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v2, v2, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v11, v0, Lcom/perm/kate/MessageSendQueue;->senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    iget-object v12, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments_objects:Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->forward_messages:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->sticker_id:Ljava/lang/Integer;

    move-object/from16 v16, v11

    iget-wide v10, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->group_id:J

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue$MessageData;->payload:Ljava/lang/String;

    move-object v4, v3

    move-wide/from16 v17, v10

    const/4 v2, 0x0

    move-object v10, v2

    move-object/from16 v11, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v1

    invoke-direct/range {v4 .. v18}, Lcom/perm/kate/MessageSender;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/lang/String;)V

    iget-object v1, v0, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3, v1}, Lcom/perm/kate/MessageSender;->sendMessage(Lcom/perm/kate/session/Session;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V
    .locals 13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    .line 31
    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6, p11}, Lcom/perm/kate/MessageSendQueue;->onlyReplyInAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p8, :cond_2

    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 41
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p2, 0x7f0f033c

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance v0, Lcom/perm/kate/MessageSendQueue$MessageData;

    invoke-direct {v0}, Lcom/perm/kate/MessageSendQueue$MessageData;-><init>()V

    .line 46
    new-instance v2, Lcom/perm/kate/api/Message;

    invoke-direct {v2}, Lcom/perm/kate/api/Message;-><init>()V

    .line 47
    iput-object p1, v2, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 48
    iput-boolean v1, v2, Lcom/perm/kate/api/Message;->is_out:Z

    .line 49
    iput-wide p2, v2, Lcom/perm/kate/api/Message;->uid:J

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-eqz p3, :cond_3

    .line 52
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, v2, Lcom/perm/kate/api/Message;->uid:J

    .line 53
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v2, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    div-long/2addr p1, p3

    invoke-static {p1, p2}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide p1

    iput-wide p1, v2, Lcom/perm/kate/api/Message;->date:J

    .line 56
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, v2, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 57
    iput-object v2, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    .line 59
    invoke-static {p6, p7, v2, p8, p11}, Lcom/perm/kate/MessageSendQueue;->fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 61
    iput-object p6, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments:Ljava/util/ArrayList;

    .line 62
    iput-object p7, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments_objects:Ljava/util/ArrayList;

    .line 63
    iput-object p8, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->sticker_id:Ljava/lang/Integer;

    .line 64
    iput-wide p9, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->group_id:J

    .line 65
    iput-object p11, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->forward_messages:Ljava/util/ArrayList;

    .line 66
    iput-object p12, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->payload:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-boolean p1, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    if-eqz p1, :cond_4

    return-void

    .line 74
    :cond_4
    invoke-virtual {p0}, Lcom/perm/kate/MessageSendQueue;->start()V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 172
    iput v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 90
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    return-void
.end method
