.class Lcom/perm/kate/PlayerActivity$2;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$2;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 188
    :try_start_0
    iget-object v0, v1, Lcom/perm/kate/PlayerActivity$2;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$000(Lcom/perm/kate/PlayerActivity;)Lcom/perm/kate/AudioListAdapter;

    move-result-object v0

    iget-object v5, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    move/from16 v0, p3

    .line 189
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/perm/kate/api/Audio;

    .line 190
    invoke-virtual {v3}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, v1, Lcom/perm/kate/PlayerActivity$2;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v2, v0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    sget v0, Lcom/perm/kate/PlaybackService;->source:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v5

    move v5, v0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/AudioClickHelper;->createPodcastMenu(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_0
    iget-wide v6, v3, Lcom/perm/kate/api/Audio;->owner_id:J

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 195
    :goto_0
    iget-object v0, v1, Lcom/perm/kate/PlayerActivity$2;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v2, v0, Lcom/perm/kate/PlayerActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sget v10, Lcom/perm/kate/PlaybackService;->source:I

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v2 .. v19}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
