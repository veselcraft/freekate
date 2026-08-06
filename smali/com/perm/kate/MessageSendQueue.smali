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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field current_message:I

.field is_sending:Z

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MessageSendQueue$MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field session:Lcom/perm/kate/session/Session;


# direct methods
.method public constructor <init>(Lcom/perm/kate/session/Session;)V
    .locals 2
    .param p1, "session"    # Lcom/perm/kate/session/Session;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    .line 19
    iput-boolean v1, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    .line 21
    iput v1, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 89
    new-instance v0, Lcom/perm/kate/MessageSendQueue$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessageSendQueue$1;-><init>(Lcom/perm/kate/MessageSendQueue;)V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue;->senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 26
    iput-object p1, p0, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSendQueue;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->nextStep()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessageSendQueue;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    return-void
.end method

.method public static fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V
    .locals 26
    .param p2, "m"    # Lcom/perm/kate/api/Message;
    .param p3, "sticker_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/perm/kate/api/Message;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p4, "forwarded_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p0, :cond_a

    .line 164
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_a

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 166
    .local v8, "att_str":Ljava/lang/String;
    const-string v22, "photo"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 167
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 168
    const-string v22, "_"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 169
    .local v11, "ids":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 170
    .local v18, "owner_id":J
    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 171
    .local v12, "id":J
    sget-object v22, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 176
    .local v17, "p":Lcom/perm/kate/api/Photo;
    if-nez v17, :cond_0

    .line 177
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Lcom/perm/kate/api/Photo;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :cond_0
    :goto_1
    if-eqz v17, :cond_1

    .line 183
    :try_start_2
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 184
    .local v5, "att":Lcom/perm/kate/api/Attachment;
    const-string v22, "photo"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 185
    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    .line 186
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v5    # "att":Lcom/perm/kate/api/Attachment;
    .end local v11    # "ids":[Ljava/lang/String;
    .end local v12    # "id":J
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    .end local v18    # "owner_id":J
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 178
    .restart local v11    # "ids":[Ljava/lang/String;
    .restart local v12    # "id":J
    .restart local v17    # "p":Lcom/perm/kate/api/Photo;
    .restart local v18    # "owner_id":J
    :catch_0
    move-exception v20

    .line 179
    .local v20, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 288
    .end local v8    # "att_str":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ids":[Ljava/lang/String;
    .end local v12    # "id":J
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    .end local v18    # "owner_id":J
    .end local v20    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v20

    .line 289
    .restart local v20    # "th":Ljava/lang/Throwable;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    invoke-static/range {v20 .. v20}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 292
    .end local v20    # "th":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 188
    .restart local v8    # "att_str":Ljava/lang/String;
    .restart local v10    # "i":I
    :cond_3
    :try_start_3
    const-string v22, "audio"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 189
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 190
    const-string v22, "_"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 191
    .restart local v11    # "ids":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 192
    .restart local v18    # "owner_id":J
    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 193
    .restart local v12    # "id":J
    sget-object v22, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v4

    .line 194
    .local v4, "a":Lcom/perm/kate/api/Audio;
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 195
    .restart local v5    # "att":Lcom/perm/kate/api/Attachment;
    const-string v22, "audio"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 196
    iput-object v4, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 197
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 198
    .end local v4    # "a":Lcom/perm/kate/api/Audio;
    .end local v5    # "att":Lcom/perm/kate/api/Attachment;
    .end local v11    # "ids":[Ljava/lang/String;
    .end local v12    # "id":J
    .end local v18    # "owner_id":J
    :cond_4
    const-string v22, "video"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 199
    const/16 v22, 0x5

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 200
    const-string v22, "_"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 201
    .restart local v11    # "ids":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 202
    .restart local v18    # "owner_id":J
    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 203
    .restart local v12    # "id":J
    sget-object v22, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object v21

    .line 204
    .local v21, "v":Lcom/perm/kate/api/Video;
    if-nez v21, :cond_5

    .line 205
    new-instance v22, Ljava/lang/Exception;

    const-string v23, "Failed to fetch video"

    invoke-direct/range {v22 .. v23}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "video_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " owner_id="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 206
    :cond_5
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 207
    .restart local v5    # "att":Lcom/perm/kate/api/Attachment;
    const-string v22, "video"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 208
    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 209
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 210
    .end local v5    # "att":Lcom/perm/kate/api/Attachment;
    .end local v11    # "ids":[Ljava/lang/String;
    .end local v12    # "id":J
    .end local v18    # "owner_id":J
    .end local v21    # "v":Lcom/perm/kate/api/Video;
    :cond_6
    const-string v22, "doc"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 211
    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 212
    const-string v22, "_"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 213
    .restart local v11    # "ids":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 214
    .restart local v18    # "owner_id":J
    const/16 v22, 0x1

    aget-object v22, v11, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 215
    .restart local v12    # "id":J
    sget-object v22, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchDocFull(JJ)Lcom/perm/kate/api/Document;

    move-result-object v9

    .line 221
    .local v9, "doc":Lcom/perm/kate/api/Document;
    if-eqz v9, :cond_1

    .line 222
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 223
    .restart local v5    # "att":Lcom/perm/kate/api/Attachment;
    iget-object v0, v9, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    iget-object v0, v9, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "ogg"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 225
    const-string v22, "audio"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 226
    new-instance v22, Lcom/perm/kate/api/Audio;

    invoke-direct/range {v22 .. v22}, Lcom/perm/kate/api/Audio;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 227
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v22, v0

    iget-object v0, v9, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 228
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v22, v0

    sget-object v23, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v24, 0x7f0703a4

    invoke-virtual/range {v23 .. v24}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 229
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v22, v0

    sget-object v23, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v24, 0x7f0703a4

    invoke-virtual/range {v23 .. v24}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 230
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v22, v0

    iget-wide v0, v9, Lcom/perm/kate/api/Document;->owner_id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 231
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v22, v0

    iget-wide v0, v9, Lcom/perm/kate/api/Document;->id:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    neg-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/perm/kate/api/Audio;->aid:J

    .line 236
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 233
    :cond_7
    const-string v22, "doc"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 234
    iput-object v9, v5, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    goto :goto_3

    .line 238
    .end local v5    # "att":Lcom/perm/kate/api/Attachment;
    .end local v9    # "doc":Lcom/perm/kate/api/Document;
    .end local v11    # "ids":[Ljava/lang/String;
    .end local v12    # "id":J
    .end local v18    # "owner_id":J
    :cond_8
    const-string v22, "location:"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 239
    invoke-static {v8}, Lcom/perm/kate/Helper;->parseLocationString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 240
    .local v14, "loc":[Ljava/lang/String;
    new-instance v4, Lcom/perm/kate/api/Attachment;

    invoke-direct {v4}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 241
    .local v4, "a":Lcom/perm/kate/api/Attachment;
    const-string v22, "geo"

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 242
    new-instance v22, Lcom/perm/kate/api/Geo;

    invoke-direct/range {v22 .. v22}, Lcom/perm/kate/api/Geo;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    .line 243
    iget-object v0, v4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v23, v14, v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    .line 244
    iget-object v0, v4, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v23, v14, v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    .line 245
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 246
    .end local v4    # "a":Lcom/perm/kate/api/Attachment;
    .end local v14    # "loc":[Ljava/lang/String;
    :cond_9
    const-string v22, "wall"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 248
    new-instance v4, Lcom/perm/kate/api/Attachment;

    invoke-direct {v4}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 249
    .restart local v4    # "a":Lcom/perm/kate/api/Attachment;
    const-string v22, "wall"

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 259
    .end local v4    # "a":Lcom/perm/kate/api/Attachment;
    .end local v8    # "att_str":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_a
    if-eqz p3, :cond_b

    .line 260
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 261
    .restart local v5    # "att":Lcom/perm/kate/api/Attachment;
    const-string v22, "sticker"

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 262
    new-instance v22, Lcom/perm/kate/api/Sticker;

    invoke-direct/range {v22 .. v22}, Lcom/perm/kate/api/Sticker;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    .line 263
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    move-object/from16 v22, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/perm/kate/api/Sticker;->id:J

    .line 264
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://vk.com/images/stickers/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/64b.png"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 265
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://vk.com/images/stickers/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/128b.png"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 266
    iget-object v0, v5, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://vk.com/images/stickers/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/256b.png"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 267
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v5    # "att":Lcom/perm/kate/api/Attachment;
    :cond_b
    sget-object v22, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual/range {v22 .. v22}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 276
    .local v6, "account_id":J
    if-eqz p4, :cond_2

    .line 278
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 279
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 281
    .local v16, "message_id":Ljava/lang/Long;
    sget-object v23, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchMessage(JJ)Lcom/perm/kate/api/Message;

    move-result-object v15

    .line 282
    .local v15, "message":Lcom/perm/kate/api/Message;
    new-instance v5, Lcom/perm/kate/api/Attachment;

    invoke-direct {v5}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 283
    .restart local v5    # "att":Lcom/perm/kate/api/Attachment;
    const-string v23, "message"

    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 284
    iput-object v15, v5, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 285
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method private nextStep()V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    iget v1, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v2, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    iget v2, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    :cond_0
    iget v1, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v2, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private send()V
    .locals 18

    .prologue
    .line 80
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/perm/kate/MessageSendQueue$MessageData;

    .line 82
    .local v17, "md":Lcom/perm/kate/MessageSendQueue$MessageData;
    sget-object v2, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 83
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    move-object/from16 v16, v0

    .line 85
    .local v16, "m":Lcom/perm/kate/api/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/MessageSendQueue;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    move-object v3, v2

    .line 86
    .local v3, "a":Landroid/app/Activity;
    :goto_0
    new-instance v2, Lcom/perm/kate/MessageSender;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/MessageSendQueue;->senderCallback:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments_objects:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->forward_messages:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->sticker_id:Ljava/lang/Integer;

    move-object/from16 v0, v17

    iget-wide v14, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->group_id:J

    invoke-direct/range {v2 .. v15}, Lcom/perm/kate/MessageSender;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Lcom/perm/kate/MessageSender$MessageSenderCallback;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/MessageSendQueue;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2, v4}, Lcom/perm/kate/MessageSender;->sendMessage(Lcom/perm/kate/session/Session;)V

    .line 87
    return-void

    .line 85
    .end local v3    # "a":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;J)V
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "chat_id"    # J
    .param p8, "sticker_id"    # Ljava/lang/Integer;
    .param p9, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Lcom/perm/kate/MessageSendQueue;->add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;)V

    .line 31
    return-void
.end method

.method public add(Ljava/lang/String;JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;JLjava/util/ArrayList;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "uid"    # J
    .param p4, "chat_id"    # J
    .param p8, "sticker_id"    # Ljava/lang/Integer;
    .param p9, "group_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p7, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p11, "forward_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    if-nez p8, :cond_2

    .line 36
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v5, 0x7f0702df

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    new-instance v3, Lcom/perm/kate/MessageSendQueue$MessageData;

    invoke-direct {v3}, Lcom/perm/kate/MessageSendQueue$MessageData;-><init>()V

    .line 41
    .local v3, "md":Lcom/perm/kate/MessageSendQueue$MessageData;
    new-instance v2, Lcom/perm/kate/api/Message;

    invoke-direct {v2}, Lcom/perm/kate/api/Message;-><init>()V

    .line 42
    .local v2, "m":Lcom/perm/kate/api/Message;
    iput-object p1, v2, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    .line 43
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/perm/kate/api/Message;->is_out:Z

    .line 44
    iput-wide p2, v2, Lcom/perm/kate/api/Message;->uid:J

    .line 46
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-eqz v4, :cond_3

    .line 47
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Message;->uid:J

    .line 48
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/perm/utils/TimeFix;->unfix(J)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/perm/kate/api/Message;->date:J

    .line 51
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 52
    iput-object v2, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->message:Lcom/perm/kate/api/Message;

    .line 54
    const/4 v4, 0x0

    move-object/from16 v0, p8

    invoke-static {p6, p7, v2, v0, v4}, Lcom/perm/kate/MessageSendQueue;->fillAttachments(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perm/kate/api/Message;Ljava/lang/Integer;Ljava/util/ArrayList;)V

    .line 56
    iput-object p6, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments:Ljava/util/ArrayList;

    .line 57
    iput-object p7, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments_objects:Ljava/util/ArrayList;

    .line 58
    move-object/from16 v0, p8

    iput-object v0, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->sticker_id:Ljava/lang/Integer;

    .line 59
    move-wide/from16 v0, p9

    iput-wide v0, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->group_id:J

    .line 60
    move-object/from16 v0, p11

    iput-object v0, v3, Lcom/perm/kate/MessageSendQueue$MessageData;->forward_messages:Ljava/util/ArrayList;

    .line 61
    iget-object v4, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-boolean v4, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    if-nez v4, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/perm/kate/MessageSendQueue;->start()V

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "index_to_remove"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    if-ge p1, v0, :cond_1

    .line 156
    iget v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 74
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/MessageSendQueue;->send()V

    goto :goto_0
.end method
